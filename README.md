# AI Engineering Onboarding

This repository bootstraps onboarding for engineers working in an AI-assisted product team. It defines the operating model, the first set of safety boundaries, starter onboarding tracks, and runnable examples that demonstrate the expected patterns.

## Start Here

1. Read the operating model overview in [docs/operating-model.md](docs/operating-model.md).
2. Use the README index below to review the topic that matches your task.
3. Run the example commands to see the rules in action:
   - `./examples/agents/verify-agent-contract.sh examples/agents/founding-engineer.md`
   - `./examples/skills/check-skill.sh examples/skills/release-notes/SKILL.md`
   - `./examples/commands/safe-release.sh staging`
   - `./examples/hooks/pre-command-check.sh "terraform plan"`
   - `./examples/guardrails/scan-secrets.sh docs tracks README.md`

## Documentation Index

### Narrative operating model

- [AI agents operating model](docs/01-ai-agents-operating-model.md)
- [Skills, commands, and rules](docs/02-skills-commands-rules.md)
- [Hook patterns](docs/03-hooks-patterns.md)
- [Safety and review guardrails](docs/04-safety-and-review-guardrails.md)

### Runnable reference appendices

- [Operating model overview](docs/operating-model.md)
- [Agents](docs/agents.md)
- [Skills](docs/skills.md)
- [Custom commands and rules](docs/commands-and-rules.md)
- [Hooks](docs/hooks.md)
- [Safety guardrails](docs/safety-guardrails.md)

### Reusable templates

- [Prompt template](templates/prompt-template.md)
- [Experiment checklist](templates/experiment-checklist.md)
- [Repository rules template](templates/repo-rules-template.md)

## Onboarding Track Structure

Start with the [track index](tracks/README.md), then use one or both layers below:

- [Foundation](tracks/foundation/README.md): shared expectations, tooling, and delivery loop.
- [Frontend](tracks/frontend/README.md): UI implementation, design fidelity, and browser verification.
- [Backend](tracks/backend/README.md): APIs, data changes, and production-safe service work.
- [Infrastructure](tracks/infrastructure/README.md): CI/CD, cloud changes, and incident-aware operations.
- [Next.js app overlay](tracks/nextjs-app/README.md): stack-specific frontend experiments.
- [Node service overlay](tracks/node-service/README.md): stack-specific backend experiments.
- [Python worker overlay](tracks/python-worker/README.md): async and automation-oriented workflows.

## Repository Map

- `docs/`: operating model and topic-specific guidance.
- `tracks/`: role-oriented foundations plus stack-specific overlays.
- `examples/`: small executable examples referenced by the docs.
- `templates/`: reusable starting points for prompts, repo rules, and experiments.

## Non-Negotiable Boundaries

- Never paste secrets into prompts, commits, or example files.
- Never let an agent execute production-affecting commands without an explicit human approval step.
- Require human review for authentication, permissions, infrastructure, billing, migrations, and customer-facing changes.
- Prefer narrow, reversible changes with focused verification over broad autonomous refactors.
