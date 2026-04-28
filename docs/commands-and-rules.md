# Custom Commands And Rules

Custom commands standardize repeatable execution. Rules are the fixed boundaries that every command must obey, regardless of who invokes it.

## Command Design

- Make commands explicit about their target environment and side effects.
- Fail closed when approval or required context is missing.
- Keep rules short, stable, and easy to audit.
- Prefer commands that print the intended action over commands that silently mutate production state.

## Runnable Example

Run the safe release example in a non-production target:

```bash
./examples/commands/safe-release.sh staging
```

The same command blocks a production release unless a human approval signal is present in the environment.

## Failure Mode

A command that accepts free-form natural language and turns it directly into shell execution is not a workflow; it is an escape hatch. That pattern erases review boundaries and makes failure analysis nearly impossible.

