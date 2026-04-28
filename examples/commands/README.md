# Command Examples

Add reusable command entry points here with:

- command name
- when to use it
- required context
- failure cases

## Runnable Example

Run `./safe-release.sh staging` to see a command that prints its release plan and blocks production unless `APPROVED_BY_HUMAN=1` is set.

## Failure Mode

A command that hides destructive shell execution behind a vague name breaks reviewability and makes rollback planning impossible.
