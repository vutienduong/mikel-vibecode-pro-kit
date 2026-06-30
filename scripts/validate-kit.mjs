#!/usr/bin/env node
import { existsSync, readFileSync, readdirSync } from "node:fs";
import { join } from "node:path";

const requiredPaths = [
  "AGENTS.md",
  "README.md",
  ".codex/config.toml",
  ".agents/skills",
  "process/context/all-context.md",
  "process/development-protocols/ai-coding-loop.md",
  "process/development-protocols/verification.md",
  "process/development-protocols/context.md",
  "mv-manifest.json",
  "install.sh",
];

const errors = [];

for (const path of requiredPaths) {
  if (!existsSync(path)) errors.push(`missing required path: ${path}`);
}

const manifest = JSON.parse(readFileSync("mv-manifest.json", "utf8"));
const skillRoot = ".agents/skills";
const skillDirs = existsSync(skillRoot)
  ? readdirSync(skillRoot, { withFileTypes: true }).filter((entry) => entry.isDirectory()).map((entry) => entry.name).sort()
  : [];

for (const skill of manifest.skills ?? []) {
  if (!skillDirs.includes(skill)) errors.push(`manifest skill not found: ${skill}`);
}

for (const skill of skillDirs) {
  const skillMd = join(skillRoot, skill, "SKILL.md");
  const openaiYaml = join(skillRoot, skill, "agents", "openai.yaml");

  if (!existsSync(skillMd)) {
    errors.push(`${skill}: missing SKILL.md`);
    continue;
  }

  const body = readFileSync(skillMd, "utf8");
  const match = body.match(/^---\n([\s\S]*?)\n---/);
  if (!match) {
    errors.push(`${skill}: missing YAML frontmatter`);
    continue;
  }

  const frontmatter = match[1];
  if (!frontmatter.includes(`name: ${skill}`)) errors.push(`${skill}: frontmatter name does not match directory`);
  if (!/^description: .{40,}/m.test(frontmatter)) errors.push(`${skill}: description is missing or too short`);
  if (/TODO|\[TODO\]/.test(body)) errors.push(`${skill}: TODO text remains`);

  if (!existsSync(openaiYaml)) {
    errors.push(`${skill}: missing agents/openai.yaml`);
    continue;
  }

  const ui = readFileSync(openaiYaml, "utf8");
  if (!ui.includes(`$${skill}`)) errors.push(`${skill}: default_prompt should mention $${skill}`);
}

if (errors.length) {
  console.error("Kit validation failed:");
  for (const error of errors) console.error(`- ${error}`);
  process.exit(1);
}

console.log(`Kit validation passed: ${skillDirs.length} skills`);
