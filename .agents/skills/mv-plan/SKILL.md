---
name: mv-plan
description: Create practical implementation plans for AI coding work. Use when turning a feature idea, bug fix, refactor, product request, or research result into a saved plan with scope, touchpoints, steps, risks, verification gates, and handoff notes.
---

# MV Plan

Turn a clear request into an executable plan. Keep it lean enough to use and specific enough to prevent guesswork.

## Workflow

1. Use `$mv-scout` if relevant files or commands are not already known.
2. Read `process/context/all-context.md` when present.
3. Decide lane:
   - quick: no saved plan needed
   - standard: one saved plan
   - careful: saved plan plus explicit approval gates
4. For standard/careful work, save a plan under:
   - `process/plans/active/{slug}_{dd-mm-yy}.md`
5. Include:
   - goal
   - scope and non-goals
   - current evidence
   - touchpoints
   - public contracts
   - implementation steps
   - verification gates
   - risks and hard stops
   - handoff notes

## Rules

- Ask clarifying questions only when missing information changes the plan materially.
- Do not bury risk in prose; make it visible.
- Verification gates must name commands or concrete manual checks.
- If the plan changes during execution, update the plan or record the deviation in a handoff note.
