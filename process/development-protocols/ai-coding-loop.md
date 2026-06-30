# AI Coding Loop

Use this loop for normal Codex work:

1. Scout relevant files and commands.
2. Read the smallest useful context.
3. Plan when risk or ambiguity justifies it.
4. Edit narrowly.
5. Verify with fresh evidence.
6. Review the diff.
7. Leave a handoff when the work is not fully done or spans sessions.

## Lane Selection

| Lane | Use when | Required artifacts |
|---|---|---|
| Quick | one-file or obvious low-risk change | final summary only |
| Standard | multi-file feature, bug fix, or refactor | plan in `process/plans/active/` |
| Careful | auth, billing, migrations, public APIs, deploy, data loss risk | plan, explicit approval, verification notes, review |

## Hard Stops

Stop and ask before:

- destructive file/data operations
- production deploys
- sending external communications
- changing secrets or permissions
- modifying billing/auth/payment behavior
- running commands that may incur cost or mutate live systems
