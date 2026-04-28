# AI Agents Operating Model

## Goal

Use AI agents to increase engineering throughput without weakening ownership, review quality, or safety.

## Core principles

- Agents accelerate execution; they do not absorb accountability.
- Every task needs a human owner, a clear acceptance bar, and a bounded scope.
- Automation should be easiest to use in low-risk workflows and hardest to use in high-risk workflows.
- Reusable patterns beat clever one-off prompts.

## Decision framework

Use agents when the work is:

- Well-scoped enough to describe with explicit acceptance criteria
- Cheap to verify through code review, focused tests, or artifact inspection
- Repetitive, research-heavy, or documentation-heavy

Avoid or tightly gate agent use when the work involves:

- Production secrets or privileged credentials
- Irreversible customer or infrastructure actions
- Security-sensitive changes without reviewer support
- Ambiguous product decisions that need stakeholder alignment first

## Standard operating loop

1. Define the task, acceptance criteria, and rollback path.
2. Choose the smallest useful agent workflow: explain, scaffold, patch, or verify.
3. Run the agent against a narrow slice of the problem.
4. Review the output as if it came from a fast junior engineer.
5. Record what worked, what failed, and whether the pattern should be reused.

## Human checkpoints

- Before execution: confirm the task is specific enough to delegate.
- Before merge: verify correctness, safety boundaries, and missing edge cases.
- After merge: capture any reusable prompt, hook, or rule that improved the result.

## Example

Scenario: a new engineer needs a starter repo structure for AI-assisted development.

- Good agent use: ask for a repo skeleton, draft docs, and placeholder examples tied to known acceptance criteria.
- Human role: verify that the structure matches the intended onboarding flow and does not imply unsafe default permissions.

## Failure mode

An engineer asks an agent to "set up our onboarding system" with no boundaries. The output mixes policy, code, and assumptions about tooling that the team never approved.

Prevention:

- Require a clear outcome and audience before asking for deliverables.
- Force each doc or automation change to name its owner and review boundary.
- Reject outputs that cannot be verified quickly.

## What success looks like

- New engineers understand where agents are encouraged and where they are constrained.
- Reusable prompts and rules accumulate over time instead of living in private chats.
- Teams can experiment by stack without fragmenting the operating model.

