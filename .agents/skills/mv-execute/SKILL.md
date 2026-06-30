---
name: mv-execute
description: Implement scoped code changes with Codex using existing repo patterns, verification evidence, and concise reporting. Use for executing a selected plan, a clear small fix, or an approved implementation task.
---

# MV Execute

Implement the requested change and prove it works.

## Workflow

1. Confirm scope:
   - selected plan path, or
   - clear direct user request
2. Read context and code:
   - `AGENTS.md`
   - `process/context/all-context.md` when present
   - relevant files from `$mv-scout`
3. Edit narrowly using existing patterns.
4. Run relevant checks:
   - targeted tests first
   - then broader build/lint/typecheck when risk warrants
5. If checks fail, investigate before trying random changes.
6. Review your own diff before final response.
7. Report changed files, verification, and residual risk.

## Rules

- Do not modify unrelated files.
- Do not overwrite user changes.
- Do not perform production deploys, destructive operations, or paid/external actions without explicit approval.
- If implementation reveals the plan is wrong, stop for a plan update when the change would alter scope or public contracts.
- "Done" requires fresh verification evidence or a clear explanation of why verification could not run.
