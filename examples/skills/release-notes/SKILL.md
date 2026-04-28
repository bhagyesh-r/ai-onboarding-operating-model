# Release Notes Skill

## When to use

Use this skill when a change needs a concise, reviewer-ready release note after implementation is complete.

## Inputs

- merged or ready-to-merge diff
- linked issue or acceptance criteria
- verification notes

## Workflow

1. Read the issue goal and the diff together.
2. Extract the user-visible outcome and the verification proof.
3. Write a short release note with no hidden implementation jargon.
4. Call out any reviewer action or rollout dependency.

## Guardrails

- do not invent behavior that is not present in the diff or issue
- do not include secrets, raw stack traces, or internal-only identifiers
- escalate when the change is security-sensitive or externally regulated

