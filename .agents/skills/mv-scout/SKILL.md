---
name: mv-scout
description: Fast read-only codebase scouting before planning, debugging, review, or implementation. Use when Codex needs to find relevant files, commands, patterns, public contracts, tests, recent changes, or blast radius without editing.
---

# MV Scout

Find the smallest useful map before acting.

## Workflow

1. Start with fast discovery:
   - `rg --files`
   - `rg "<keyword>"`
   - `git status --short --branch`
   - `git log --oneline -n 10` when recent history matters
2. Read `AGENTS.md` and `process/context/all-context.md` when present.
3. Identify:
   - relevant source files
   - tests and fixtures
   - commands to verify the work
   - public contracts affected
   - risky surfaces
   - unknowns requiring clarification
4. Return a compact scouting report.

## Output Shape

```md
## Scout Result

- Task interpretation:
- Relevant files:
- Existing patterns:
- Verification commands:
- Blast radius:
- Risks:
- Open questions:
```

## Rules

- Read-only only.
- Do not turn scouting into planning unless the user asks.
- Prefer ranked file lists over dumping every match.
- Call out uncertainty instead of filling gaps with confident guesses.
