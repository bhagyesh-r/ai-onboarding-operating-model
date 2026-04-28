# Agents

Agents own bounded execution. Each agent spec should make its mission, inputs, constraints, escalation path, and definition of done obvious enough that a reviewer can predict how it will behave before it runs.

## Authoring Standard

- Give every agent one primary responsibility.
- State the exact artifacts or signals the agent accepts as input.
- List the safety and approval boundaries in imperative language.
- Define when the agent must escalate to a human or a specialist.
- End with a concrete definition of done that includes verification and status updates.

## Runnable Example

Validate the sample founding engineer contract:

```bash
./examples/agents/verify-agent-contract.sh examples/agents/founding-engineer.md
```

That check fails if any required section is missing, which keeps new agent prompts from drifting into vague instructions.

## Failure Mode

An agent brief that says "ship whatever is needed" without constraints turns a scoped executor into an unbounded operator. In practice that leads to hidden assumptions, skipped approvals, and low-quality changes that no reviewer can reconstruct.

