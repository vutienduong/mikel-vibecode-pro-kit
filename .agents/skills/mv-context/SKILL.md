---
name: mv-context
description: Generate or refresh durable repository context for AI coding agents. Use when process/context/all-context.md is missing, stale, contradicted by code, or when Codex keeps rediscovering commands, architecture, testing setup, deployment details, or risky areas.
---

# MV Context

Maintain `process/context/all-context.md` as the compact source of truth for future agent sessions.

## Workflow

1. Read existing `process/context/all-context.md` if present.
2. Inspect manifests, scripts, config files, important source directories, tests, and deployment files.
3. Capture facts, not guesses:
   - project purpose
   - stack and package manager
   - key directories and entry points
   - commands for install, dev, build, test, lint, typecheck, deploy
   - architecture boundaries
   - environment variables and integrations
   - verification and risk notes
4. Update `process/context/all-context.md` in concise sections.
5. Include open questions when evidence is incomplete.

## Rules

- Keep the file useful to a future coding agent, not a reader of a public README.
- Include exact paths and commands.
- Do not store secrets.
- Prefer short tables and bullets over essays.
- Update context after substantial architecture, command, test, or deployment changes.
