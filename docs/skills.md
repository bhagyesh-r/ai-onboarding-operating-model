# Skills

Skills package reusable know-how. A good skill is narrow, discoverable, and opinionated about the exact workflow it enables.

## Skill Anatomy

- State when the skill should be loaded.
- List the required inputs or prerequisites.
- Describe the execution workflow in the order it should happen.
- Name the guardrails and fallback behavior if the workflow cannot be completed safely.

## Runnable Example

Validate the sample skill definition:

```bash
./examples/skills/check-skill.sh examples/skills/release-notes/SKILL.md
```

The example enforces a small contract so contributors do not create skills that have triggers but no operating procedure or guardrails.

## Failure Mode

A skill that tries to cover onboarding, bug triage, release management, and support replies at once becomes impossible to reason about. Broad skills hide unsafe branches and make it unclear which workflow is actually being executed.

