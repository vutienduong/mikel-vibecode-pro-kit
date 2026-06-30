# AGENTS.md

This project uses **Mikel Vibecode Pro Kit**, a lightweight Codex-first workflow for AI coding agents.

Read this file before substantial work. Prefer the project context in `process/context/all-context.md` when it exists.

## Agent Operating Loop

Default loop:

1. **Scout**: find relevant files, commands, contracts, and risk.
2. **Context**: read or refresh `process/context/all-context.md` when project knowledge is missing or stale.
3. **Plan**: create a saved plan for non-trivial or risky work.
4. **Execute**: make scoped edits using existing repo patterns.
5. **Verify**: run relevant automated checks and record evidence.
6. **Review**: inspect diff for bugs, regressions, and missing tests.
7. **Handoff**: leave a concise state summary when work spans sessions.

Small safe changes may compress this loop, but never skip reading the relevant code before editing and never claim completion without fresh verification evidence.

## Codex Skills

Project-local skills live under `.agents/skills/`.

Use:

- `$mv-setup` to bootstrap or repair this workflow in a repo.
- `$mv-context` to create or refresh durable repo knowledge.
- `$mv-scout` before searching broadly, planning, debugging, or editing unfamiliar code.
- `$mv-plan` for implementation plans and task folders.
- `$mv-execute` for scoped implementation and verification.
- `$mv-debug` for bugs, failing tests, CI failures, or unclear behavior.
- `$mv-review` for diff review.
- `$mv-handoff` for session summaries and resume notes.

## Process Files

- `process/context/all-context.md`: stable project knowledge, commands, architecture, conventions, risk notes.
- `process/plans/active/`: active implementation plans and related notes.
- `process/plans/completed/`: archived plans after work is finished.
- `process/development-protocols/`: shared workflow rules for AI agents.

## Ground Rules

- Prefer `rg` and `rg --files` for discovery.
- Preserve user changes. Do not reset, checkout, or delete unrelated work.
- Follow existing architecture before adding abstractions.
- Keep edits narrow unless the user asks for broader cleanup.
- Use official/current docs for time-sensitive APIs and dependencies.
- For UI work, verify visually when a browser workflow is available.
- For risky areas such as auth, billing, data migrations, secrets, public APIs, deployments, or destructive operations, stop for explicit approval before irreversible action.

## Completion Standard

A task is done when:

- the requested behavior is implemented or the answer is fully supported by evidence
- relevant checks were run, or the reason they could not run is stated
- known risks or follow-ups are called out
- the final response is concise and references important changed files
