---
name: mv-review
description: Review code diffs for correctness, regressions, missing tests, broken contracts, security/privacy risks, and maintainability issues before shipping.
---

# MV Review

Review like a senior engineer: prioritize risks, not style preferences.

## Workflow

1. Inspect repo status and diff:
   - `git status --short --branch`
   - `git diff --stat`
   - `git diff`
2. Read surrounding code for changed files when needed.
3. Check:
   - behavior regressions
   - public contracts
   - data/schema changes
   - async and error handling paths
   - missing tests for changed behavior
   - security/privacy implications
   - verification adequacy
4. Return findings first, ordered by severity.

## Output Rules

- Use file and line references when possible.
- If no findings, say "No blocking issues found" and mention residual test risk.
- Keep summary secondary to findings.
- Do not rewrite the patch unless the user asks.
