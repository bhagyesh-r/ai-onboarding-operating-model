# Skills, Commands, and Rules

## Purpose

Define where reusable workflow knowledge should live so engineers do not rebuild the same guidance from scratch.

## Working definitions

- Skills: durable workflow instructions for recurring task types
- Commands: narrow entry points for repeating a concrete action
- Rules: standing constraints that shape behavior across an entire repo or team

## When to use each tool

Use a skill when:

- The task needs a repeatable multi-step workflow
- The same context would otherwise be re-explained in many prompts
- The workflow benefits from examples, references, or support scripts

Use a command when:

- The action is frequent and easy to trigger from a short phrase
- The main value is speed and consistency, not deep context

Use a rule when:

- The behavior must hold across all tasks in the repo
- Violations create safety, consistency, or review risk

## Authoring guidelines

- Name files after the job they do, not the tool that created them.
- Prefer one sharp workflow per skill over catch-all instruction dumps.
- Keep commands small enough that their side effects are predictable.
- Write rules as enforceable statements with obvious pass/fail behavior.
- Include one example and one anti-pattern in each new workflow artifact.

## Suggested repo workflow

1. Start with a plain-language writeup of the repeated problem.
2. Distill the repeated steps into a skill or command only after the pattern is stable.
3. Promote the safety-critical parts into repo rules once the team agrees they are mandatory.

## Example

Problem: engineers repeatedly forget to document test evidence after agent-written patches.

- Rule: every substantive code change must record the verification command or artifact.
- Command: add a "verification recap" helper that standardizes the format.
- Skill: document the end-to-end patch workflow, including when to pause for review.

## Failure mode

The team creates a "general engineering skill" that mixes deployment steps, review policy, and onboarding tips. Engineers stop trusting it because it is too broad and too stale.

Prevention:

- Split by task type.
- Review workflow docs whenever the underlying process changes.
- Delete or rewrite artifacts that no longer reflect reality.

