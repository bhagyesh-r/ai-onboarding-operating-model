# Hooks Patterns

## Goal

Use hooks to make the safe path the default path without adding noisy automation.

## Design rules

- Hook outputs must be obvious, deterministic, and easy to debug.
- A hook should enforce one boundary well rather than bundle unrelated checks.
- If a hook blocks work, the error message must name the expected fix.
- Prefer hooks that surface context or verification gaps over hooks that rewrite large amounts of code.

## Good hook categories

### Preflight checks

Use before a task or commit to catch missing context, missing tests, or unsafe file targets.

### Context capture

Use to append task metadata, verification evidence, or experiment notes to a durable log.

### Post-task verification

Use after edits to run focused checks, remind the engineer about review boundaries, or request a summary of changed files.

## Example patterns

### Hook: change-scope validator

- Trigger: before a patch is applied
- Purpose: reject edits outside the allowed directory set for the current task
- Value: prevents accidental repo-wide churn

### Hook: verification reminder

- Trigger: before closing a task
- Purpose: require the engineer to record what was checked
- Value: keeps agent work reviewable by someone who did not watch the session live

## Failure mode

A hook silently edits prompt context or rewrites generated files after every run. Engineers cannot tell which output came from the model and which came from hidden automation.

Prevention:

- Keep hooks observable.
- Log side effects.
- Avoid mutating user intent unless the workflow explicitly calls for it.

## Rollout guidance

- Start with advisory hooks first.
- Promote a hook to blocking only after it proves signal over several runs.
- Document owner, trigger, and rollback steps for every new hook.

