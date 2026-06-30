# Verification Protocol

Completion requires fresh evidence.

## Minimum Standard

- Run the most relevant automated check for the blast radius.
- Read the output.
- Fix failures caused by the change.
- Report what ran and what passed.

## If Checks Cannot Run

Say why, then provide the best available substitute:

- static read-through
- targeted script
- type-level reasoning
- manual browser check
- screenshots
- logs or command output

Do not present unverified work as fully done.

## Evidence Format

Use concise evidence in final or handoff notes:

```text
Verification:
- pnpm test -- --runInBand path/to/test: passed
- pnpm typecheck: not run, repo has no typecheck script
```
