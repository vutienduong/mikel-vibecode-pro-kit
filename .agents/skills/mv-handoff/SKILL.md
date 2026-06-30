---
name: mv-handoff
description: Create a concise handoff or resume summary for AI coding sessions. Use when context may be lost, work is paused, a different agent will continue, or the user asks what is in flight.
---

# MV Handoff

Make the next session cheap to resume.

## Workflow

1. Gather current state:
   - `git status --short --branch`
   - active plans in `process/plans/active/`
   - recent commits when helpful
   - modified files and verification results
2. Read the selected plan or most relevant active plan if one exists.
3. Summarize:
   - what was requested
   - what is done
   - what changed
   - what verification ran
   - what remains
   - exact next step
4. Save a handoff note when work is incomplete:
   - `process/plans/active/{slug}_HANDOFF_{dd-mm-yy}.md`

## Rules

- Be concrete enough for a fresh agent to continue without chat history.
- Include paths and commands.
- Separate completed work from assumptions.
- Do not claim tests passed unless they were run in this session or evidence is available.
