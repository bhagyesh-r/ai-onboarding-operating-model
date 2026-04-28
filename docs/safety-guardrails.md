# Safety Guardrails

The operating model is only useful if the boundaries are explicit. These guardrails apply to all agents, skills, commands, and hooks in this repository.

## Secret Handling

- Never place credentials, tokens, or private keys in prompts, commits, examples, or logs.
- Use secret managers or environment injection for runtime access.
- Redact sensitive values before handing context to an agent.

## Production Actions

- Require an explicit human approval before deploys, migrations, destructive infrastructure changes, or cost-creating actions.
- Prefer dry runs, plans, or previews before any live execution.
- Record who approved the action and what was verified first.

## Human Review Boundaries

Human review is required for:

- authentication or authorization changes
- permission model updates
- data migrations and backfills
- infrastructure or networking changes
- billing, compliance, or legal-impacting behavior
- customer-facing copy, notifications, or support actions

## Runnable Example

Scan the primary docs and track content for obvious secret leaks:

```bash
./examples/guardrails/scan-secrets.sh docs tracks README.md
```

The scanner is intentionally simple, but it demonstrates the right failure shape: reject the change early and name the suspect files.

## Failure Mode

Teams often document review boundaries but leave production commands available to fully autonomous agents. That mismatch creates a paper policy that looks safe while the actual execution path still permits unsafe actions.

