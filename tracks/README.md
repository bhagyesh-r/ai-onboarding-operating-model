# Track Index

Tracks are split into two layers so the repo can teach the shared operating model first and then adapt it to a specific stack.

## Foundation Layer

- [Foundation](foundation/README.md): first-week expectations for every engineer.
- [Frontend](frontend/README.md): UI delivery, design fidelity, and browser checks.
- [Backend](backend/README.md): APIs, data boundaries, and service verification.
- [Infrastructure](infrastructure/README.md): CI/CD, infrastructure safety, and operational reviews.

## Stack Overlay Layer

- [Next.js app](nextjs-app/README.md): frontend product workflows.
- [Node service](node-service/README.md): TypeScript or JavaScript service workflows.
- [Python worker](python-worker/README.md): async jobs, scripts, and background automation.

## How To Extend

1. Add shared policy or review rules to the foundation layer first.
2. Add stack-specific prompts, commands, hooks, and examples to the overlay that needs them.
3. Link every new track artifact back to the relevant docs in `docs/` and the runnable examples in `examples/`.

