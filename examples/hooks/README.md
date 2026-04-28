# Hook Examples

Add concrete hook snippets here with:

- trigger point
- expected inputs
- side effects
- rollback plan

## Runnable Example

Run `./pre-command-check.sh "terraform apply -auto-approve"` to see a blocking hook that rejects a known-dangerous command before it runs.

## Failure Mode

A hook that silently rewrites commands or mutates files without surfacing the side effect turns the automation layer into an unreviewable black box.
