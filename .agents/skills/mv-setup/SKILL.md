---
name: mv-setup
description: Bootstrap a repository for Codex-first AI coding with Mikel Vibecode Pro Kit. Use when installing the kit into a fresh or existing project, preparing AGENTS.md, creating process/context/all-context.md, detecting commands, or orienting Codex before normal development.
---

# MV Setup

Prepare a repo so Codex can work with durable context, practical plans, and verification gates.

## Workflow

1. Detect project shape:
   - read `package.json`, lockfiles, `pyproject.toml`, `requirements.txt`, `go.mod`, `Cargo.toml`, `Gemfile`, or other manifests
   - inspect top-level folders with `rg --files | sed -n '1,160p'`
   - check whether `AGENTS.md`, `.agents/skills/`, `.codex/`, and `process/context/all-context.md` exist
2. Ask only for missing human context:
   - what the project does
   - who uses it
   - risky areas agents should treat carefully
   - preferred commands if manifests do not reveal them
3. Create or repair the minimal structure:
   - `.agents/skills/`
   - `.codex/`
   - `process/context/`
   - `process/plans/active/`
   - `process/plans/completed/`
4. Use `$mv-context` to populate `process/context/all-context.md`.
5. Summarize what was installed, what was inferred, and what still needs user confirmation.

## Rules

- Never overwrite meaningful existing project context without first preserving a backup or asking.
- Keep setup project-specific. Do not paste generic kit marketing into context files.
- If this repo already has another harness, identify overlap and propose coexistence rather than deleting it.
- Prefer Codex-first paths; mention Claude Code compatibility only as a follow-up.
