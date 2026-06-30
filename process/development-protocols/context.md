# Context Protocol

`process/context/all-context.md` is the durable project memory shared across agent sessions.

Keep it factual, short, and path-specific.

## Read Order

1. Read `AGENTS.md`.
2. Run `rg --files process/context` when context exists.
3. Read `process/context/all-context.md`.
4. Read only additional docs relevant to the task.

## What Belongs Here

- architecture and routing
- commands and setup
- environment variables
- testing and deployment procedures
- conventions and reusable gotchas

## What Does Not Belong Here

- long chat transcripts
- per-feature brainstorming
- stale implementation plans
- private secrets
- tool-specific filler

## Update Rule

When code changes invalidate this file, update it in the same task or leave a clear handoff note.
