<div align="center">

# Mikel Vibecode Pro Kit

### Make Codex feel less like a chatbot and more like a project-native coding partner.

Drop this into a repo and give Codex the things raw AI coding sessions usually lack:
project memory, role clarity, planning discipline, debugging habits, verification pressure, and clean handoffs.

**One install. Eight core skills. Five Codex roles. A lightweight process that helps AI coding sessions compound instead of reset.**

</div>

---

## The Pitch

Raw vibe coding is fast for the first 15 minutes.

Then the tax arrives:

- Codex forgets what it learned yesterday.
- It re-reads the same files again and again.
- It jumps into code before understanding the architecture.
- It says a fix is done before fresh verification.
- Long tasks lose their place after context compaction.
- Plans, decisions, and test evidence vanish into chat history.

**Mikel Vibecode Pro Kit turns that chaos into a repeatable AI coding operating system.**

It does not try to be a giant enterprise framework. It gives solo builders, consultants, and fast-moving teams the minimum serious structure needed to make Codex useful across real projects.

## What You Get

<table>
<tr>
<td width="50%" valign="top"><strong>Codex-first setup</strong><br>Project-local skills, Codex agent roles, and an AGENTS.md that tells the agent exactly how to behave in this repo.</td>
<td width="50%" valign="top"><strong>Durable project memory</strong><br><code>process/context/all-context.md</code> captures architecture, commands, conventions, risks, and testing notes so each session starts warmer.</td>
</tr>
<tr>
<td valign="top"><strong>Scout before edit</strong><br>Codex learns to map relevant files, contracts, tests, and blast radius before touching source code.</td>
<td valign="top"><strong>Plan when it matters</strong><br>Small changes stay light. Risky or multi-file work gets a saved plan with touchpoints, public contracts, steps, risks, and verification gates.</td>
</tr>
<tr>
<td valign="top"><strong>Debug from evidence</strong><br>The debugging workflow forces symptoms, hypotheses, evidence, root cause, and fix boundary before random patching.</td>
<td valign="top"><strong>Verify before claiming done</strong><br>The kit pushes Codex to run relevant checks, read output, fix failures, and report what actually passed.</td>
</tr>
<tr>
<td valign="top"><strong>Review like a senior engineer</strong><br>Diff review focuses on correctness, regressions, missing tests, broken contracts, and security or privacy risk.</td>
<td valign="top"><strong>Resume without archaeology</strong><br>Handoff notes make the next session cheaper: current state, changed files, verification, open questions, and the single next action.</td>
</tr>
</table>

## The Practical Outcome

This kit is built for one job: **reduce AI coding waste**.

Not by making Codex slower. By making the agent stop doing the expensive dumb things:

- building before reading
- guessing commands
- losing context
- repeating discovery work
- inventing architecture
- shipping unverified changes
- forgetting why a decision was made

### Target Results

These are practical operating targets, not lab benchmarks:

| Outcome | What the kit is designed to improve |
|---|---|
| 2-5x faster session re-entry | Project context and handoff files reduce repeated orientation work |
| 2-3x fewer "wrong file, wrong pattern" edits | Scout-first workflow pushes Codex toward existing code paths |
| 5-10x cleaner resume after context loss | Plans, context, and handoff notes live on disk, not only in chat |
| Fewer fake-done moments | Verification rules require fresh evidence or an explicit caveat |
| Better client/project trust | Plans, decisions, risks, and checks become reviewable artifacts |

The real win is not a magic speed number. It is momentum. Codex stops starting cold every time.

## Who This Is For

Use this kit if you:

- use Codex as a serious coding partner, not just a one-off autocomplete tool
- build many small apps, prototypes, automations, websites, or internal tools
- jump between client projects and need agents to catch up fast
- want lightweight structure without turning every change into a ceremony
- care about shipping work that can be explained, resumed, tested, and improved

It is especially useful for:

- solo builders
- AI product consultants
- vibe coders turning prototypes into real code
- small teams using Codex or Claude Code
- agencies that need repeatable delivery quality across multiple repos

## The Core Loop

```text
Scout -> Context -> Plan -> Execute -> Verify -> Review -> Handoff
```

That loop is the whole philosophy.

| Step | What it prevents |
|---|---|
| Scout | editing the wrong files or missing existing patterns |
| Context | rediscovering the same project facts every session |
| Plan | multi-file work becoming vague and slippery |
| Execute | broad, unrelated changes |
| Verify | "should work" claims without proof |
| Review | regressions hiding inside a green command |
| Handoff | losing the thread after compaction or a day away |

For tiny changes, compress the loop. For risky changes, keep the gates.

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

No hidden service. No cloud dependency. No lock-in.

The important artifact is `process/`: your project gains a small working memory that future AI sessions can read.

## Core Skills

| Skill | Use it for | Why it matters |
|---|---|---|
| `$mv-setup` | Bootstrap a project for Codex-first AI coding | Turns a normal repo into an agent-ready workspace |
| `$mv-context` | Generate or refresh durable repo knowledge | Stops project knowledge from living only in chat |
| `$mv-scout` | Find relevant files, contracts, risks, and commands before acting | Makes edits more local, informed, and safer |
| `$mv-plan` | Create a practical implementation plan | Gives non-trivial work a real execution path |
| `$mv-execute` | Implement from a plan or clear request, then verify | Keeps coding scoped and evidence-driven |
| `$mv-debug` | Investigate failures with evidence before changing code | Reduces random fixes and second-order bugs |
| `$mv-review` | Review diffs for regressions and missing tests | Catches risk before the final answer |
| `$mv-handoff` | Summarize current state so another session can resume | Makes long work survive context loss |

## Codex Roles

The kit also ships optional Codex role prompts:

| Role | Best for |
|---|---|
| `mv-researcher` | read-only codebase and architecture investigation |
| `mv-planner` | turning research or a request into a saved plan |
| `mv-implementer` | scoped implementation with verification |
| `mv-debugger` | root-cause analysis and fix boundaries |
| `mv-reviewer` | production-minded diff review |

These are intentionally few. The kit starts with the roles that matter most for real coding flow.

## Get Started

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

The setup flow should detect the stack, read the repo, ask for missing project context, and populate `process/context/all-context.md` with useful facts.

## Example Workflows

### Add a feature without chaos

```text
Use $mv-scout to inspect the relevant files for adding team invitations.
Use $mv-plan to create an implementation plan.
Use $mv-execute to implement the plan and verify it.
Use $mv-review to review the diff.
```

### Debug a failing build

```text
Use $mv-debug to investigate this failing command before changing code:
pnpm build
```

Codex should capture the exact error, form hypotheses, inspect the relevant files, identify the root cause, and only then propose or apply a fix.

### Resume work after a break

```text
Use $mv-handoff to summarize what is in flight and the next best step.
```

The next agent gets the current state without needing the whole chat history.

## Why It Works

Most AI coding prompts try to make the model smarter.

This kit does something more durable: it makes the **workspace** smarter.

- The repo carries its own context.
- The agent has named skills for common work.
- Plans and handoffs live on disk.
- Verification becomes part of the workflow.
- Review is treated as a separate mode of thinking.

That means every session can build on the last one. The value compounds.

## Design Principles

- **Codex first**: optimize for Codex project-local skills and Codex role prompts before expanding elsewhere.
- **Small by default**: add process only when it prevents real waste.
- **Readable artifacts**: plans, context, and handoffs should help humans too.
- **Evidence over vibes**: no completion claim without a check or a caveat.
- **Respect existing repos**: install safely, preserve context, and avoid surprise rewrites.
- **Client-work friendly**: make decisions, risks, and verification easy to show.

## What This Is Not

- Not a huge agent bureaucracy.
- Not a replacement for engineering judgment.
- Not a guarantee that AI code is correct.
- Not a magic benchmark machine.
- Not a reason to skip tests, reviews, or careful product thinking.

It is a practical kit for making AI-assisted coding less fragile.

## Future Work

This is a starting point, not the finished system. The direction is clear: keep the core light, then add higher-leverage layers only when they make day-to-day AI coding faster, calmer, or safer.

Likely next improvements:

- Add a safer update flow so existing installs can receive kit changes without overwriting project context.
- Add a `mv-autopilot` lane for longer autonomous runs with clear hard stops and resume notes.
- Add richer setup detection for common stacks such as Next.js, Python, FlutterFlow-adjacent backends, n8n workflow repos, and WordPress/WooCommerce projects.
- Add optional browser/UI verification guidance for frontend work.
- Add plan and context validators that catch stale commands, missing verification gates, and broken skill metadata.
- Add examples of good project-specific `process/context/all-context.md` files.
- Add optional Claude Code compatibility after the Codex workflow feels solid.
- Add packaging and release notes for sharing the kit across multiple personal/client projects.
- Add a lightweight closeout flow that archives completed plans and feeds durable learnings back into context.
- Add more proof assets: before/after demos, real project case studies, and sample agent transcripts.

Future versions can learn from mature agent-system patterns, but every feature should pass one filter:

**Does this make Codex ship better work with less repeated explanation?**

## FAQ

### Is this only for Codex?

Codex is the first-class target. The structure is simple enough to adapt to Claude Code later, but the first priority is making Codex feel excellent in real repos.

### Is this heavy?

No. The kit has eight core skills, five optional roles, and a small `process/` folder. The goal is useful structure, not ritual.

### Should every task use a plan?

No. Tiny safe changes can go scout -> execute -> verify. Plans are for ambiguity, risk, multi-file work, or anything you may need to explain later.

### Why keep context in files?

Because chat memory is temporary. Files survive context compaction, model changes, app restarts, and handoffs to another agent.

### Can I customize it?

Yes. The kit is meant to become project-specific. Add context, tune skills, and keep only the process that earns its place.
