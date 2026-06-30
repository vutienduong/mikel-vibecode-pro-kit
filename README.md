# Mikel Vibecode Pro Kit

Codex-first AI coding kit for practical vibe coding: enough structure to keep agents sharp, not so much ceremony that small work becomes paperwork.

This kit is intentionally small and opinionated. It focuses on the workflows that repeatedly matter when working with Codex, Claude Code, or similar AI coding agents:

- fast repo orientation before edits
- durable project context
- practical planning
- root-cause debugging
- implementation with verification evidence
- diff review
- handoff and resume after context loss

## What Gets Installed

```text
target-project/
├── AGENTS.md
├── .codex/
│   ├── config.toml
│   └── agents/
├── .agents/
│   └── skills/
└── process/
    ├── context/
    │   └── all-context.md
    ├── plans/
    │   ├── active/
    │   └── completed/
    └── development-protocols/
```

## Core Skills

| Skill | Use it for |
|---|---|
| `$mv-setup` | Bootstrap a project for Codex-first AI coding |
| `$mv-context` | Generate or refresh durable repo knowledge |
| `$mv-scout` | Find relevant files, contracts, risks, and commands before acting |
| `$mv-plan` | Create a practical implementation plan |
| `$mv-execute` | Implement from a plan or clear request, then verify |
| `$mv-debug` | Investigate failures with evidence before changing code |
| `$mv-review` | Review diffs for bugs, regressions, and missing tests |
| `$mv-handoff` | Summarize current state so another session can resume |

## Install Locally

From this kit repo:

```bash
./install.sh /path/to/target-project
```

Or from inside the target project:

```bash
/path/to/mikel-vibecode-pro-kit/install.sh .
```

Then open Codex in the target project and say:

```text
Use $mv-setup to prepare this repo.
```

## Operating Style

The kit uses a lightweight flow:

```text
Scout -> Context -> Plan -> Execute -> Verify -> Review -> Handoff
```

For tiny changes, Codex can skip straight from scout to execute. For risky changes, keep the plan and review gates.

## Design Notes

- Codex is the first-class target.
- `.agents/skills` is the canonical skill tree.
- `.codex/agents` provides optional role prompts for research, planning, implementation, debugging, and review.
- `process/context/all-context.md` is project-specific and should evolve as the codebase evolves.
- The kit should stay personal, practical, and easy to install into real projects without dragging in heavyweight process by default.

## Future Work

This is a starting point, not the finished system. Likely next improvements:

- Add a safer update flow so existing installs can receive kit changes without overwriting project context.
- Add a `mv-autopilot` lane for longer autonomous runs with clear hard stops and resume notes.
- Add richer setup detection for common stacks such as Next.js, Python, FlutterFlow-adjacent backends, n8n workflow repos, and WordPress/WooCommerce projects.
- Add optional browser/UI verification guidance for frontend work.
- Add plan and context validators that catch stale commands, missing verification gates, and broken skill metadata.
- Add examples of good project-specific `process/context/all-context.md` files.
- Add an optional Claude Code compatibility layer after the Codex workflow feels solid.
- Add packaging and release notes for sharing the kit across multiple personal/client projects.

Future versions can borrow useful ideas from advanced agent harness patterns, but every addition should earn its place by making day-to-day AI coding calmer, faster, or safer.
