# Hooks

Hooks enforce checks around common actions such as command execution, commits, or deploys. They should be predictable, fast, and obvious about whether they are advisory or blocking.

## Hook Guidelines

- Put hooks at the boundary where mistakes become expensive.
- Keep the checks deterministic and easy to reproduce locally.
- Block only on policies that are worth interrupting work for.
- Print a clear remediation path when a hook rejects an action.

## Runnable Example

Allow a safe command:

```bash
./examples/hooks/pre-command-check.sh "terraform plan"
```

Block an unsafe command:

```bash
./examples/hooks/pre-command-check.sh "terraform apply -auto-approve"
```

## Failure Mode

A hook that only logs a warning but never blocks known-dangerous commands creates false confidence. Teams start assuming the boundary exists even though nothing actually prevents the bad action.

