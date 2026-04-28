# AI-Assisted Engineering Operating Model

The team uses AI agents to accelerate scoped engineering work, not to bypass ownership. Humans define the goal, acceptance criteria, and review boundaries; agents execute within those constraints and leave durable artifacts behind.

## Core Loop

1. Define the task with explicit scope, acceptance criteria, and blockers.
2. Select the narrowest agent or skill that can complete the work safely.
3. Execute with small changes, focused checks, and written progress updates.
4. Route security-sensitive, production-affecting, or ambiguous work through human review before completion.

## Decision Rules

- Default to reversible changes that can be verified locally.
- Promote repeated workflows into skills, commands, or hooks instead of rewriting them ad hoc.
- Treat every automation boundary as a product surface: define inputs, outputs, and failure behavior.
- Record failure modes next to examples so new teammates understand where autonomy must stop.

## Sections

- [Agents](agents.md)
- [Skills](skills.md)
- [Custom commands and rules](commands-and-rules.md)
- [Hooks](hooks.md)
- [Safety guardrails](safety-guardrails.md)

