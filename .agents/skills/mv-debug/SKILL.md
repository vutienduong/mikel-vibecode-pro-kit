---
name: mv-debug
description: Debug bugs, failing tests, CI failures, runtime errors, performance issues, or unexpected behavior with evidence-first root-cause analysis before fixes.
---

# MV Debug

Find the cause before changing code.

## Workflow

1. Capture the symptom exactly:
   - command
   - error text
   - stack trace
   - logs
   - environment or recent change context
2. Scout affected files and tests.
3. Build hypotheses:
   - start with 2 or 3 plausible causes when unclear
   - state what evidence would confirm or eliminate each
4. Test hypotheses with the smallest reliable checks.
5. Identify root cause and fix boundary.
6. Only then implement or hand off to `$mv-execute`.
7. Verify the fix by rerunning the failing command and relevant regressions.

## Output Shape

```md
## Root Cause

## Evidence

## Fix Boundary

- affected_files:
- proposed_fix:
- risk_class: low | medium | high

## Verification
```

## Rules

- No speculative fixes before evidence.
- Do not hide inconclusive evidence.
- For high-risk surfaces, require review before broad changes.
