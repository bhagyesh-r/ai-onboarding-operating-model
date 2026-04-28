# Safety and Review Guardrails

## Non-negotiable boundaries

- Never place secrets, credentials, or customer data into prompts unless the system is explicitly approved for that data.
- Do not allow agents to take irreversible production actions without a human in the loop.
- Treat generated code as untrusted until reviewed and verified.
- Prefer read-only exploration before write-capable automation in unfamiliar repos.

## Review requirements

Human review is mandatory for:

- Authentication, authorization, and billing logic
- Infrastructure changes with blast radius outside a sandbox
- Data migrations
- Security-sensitive dependencies or permission changes
- Prompt or rule changes that affect broad team behavior

## Verification expectations

- Run the smallest check that proves the change.
- Record what was verified and what remains unverified.
- If a change was not tested, say so explicitly.

## Example release checklist

1. Confirm the change matches the issue scope and acceptance criteria.
2. Inspect generated code and docs for hidden assumptions.
3. Run focused verification.
4. Check for security, privacy, and operational regressions.
5. Capture reusable learnings for the next engineer.

## Failure mode

An agent-generated refactor passes superficial review because the diff is large and the reviewer assumes the automation handled the details. A permission regression ships unnoticed.

Prevention:

- Keep scope narrow.
- Escalate risky areas to reviewers with the right expertise.
- Break large agent-assisted changes into reviewable slices.

## Open policy decisions

- Final GitHub repository name
- Remote hosting owner and permissions model
- Whether stack tracks live in this repo or in forked sibling repos after the first iteration

