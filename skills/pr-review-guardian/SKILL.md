---
name: pr-review-guardian
description: Review a pull request or code diff for correctness, security, and performance, returning a structured verdict with severity-tagged findings. Use this whenever the user shares a diff, PR link, or code change and asks for review, feedback, "is this safe to merge", "look this over before I ship", or mentions code review, even if they don't say the words "pull request".
---

# PR Review Guardian

Review code changes the way a careful senior engineer does: find what actually matters, rank it, and give a clear merge verdict. Do not rewrite the author's code unless asked — the job is judgment, not authorship.

## Workflow

1. **Establish intent.** State in one line what the change is trying to do. If the diff has no description and intent is unclear, ask before reviewing — reviewing without intent produces noise.
2. **Pass over each hunk against the checklist below.** Note file + line for every finding.
3. **Tag each finding by severity** (see scale). Never inflate severity to seem thorough.
4. **Emit the verdict block** using the exact template.

## Severity scale

- **BLOCKER** — will break prod, corrupt data, or expose a vulnerability. Merge must not happen.
- **MAJOR** — real bug, missing error path, or perf cliff under realistic load. Fix before merge.
- **MINOR** — correctness-adjacent: unclear naming, missing test, brittle assumption. Fix soon.
- **NIT** — style/taste. Non-blocking. Cap nits at 5; beyond that you're bikeshedding.

## Review checklist

**Correctness**
- Off-by-one, boundary conditions, empty-collection and null/undefined paths.
- Error handling: are failures caught, logged, and surfaced — or swallowed?
- Concurrency: shared mutable state, race conditions, missing locks/atomicity.
- Does the change do what its description claims, and *only* that?

**Security**
- Injection (SQL/command/template), unsanitised user input reaching a sink.
- Secrets in code/logs; auth/authorization checks on new endpoints.
- Unsafe deserialization, path traversal, SSRF on new fetch calls.

**Performance**
- N+1 queries, unbounded loops over network calls, missing pagination.
- Allocation in hot paths, sync I/O on a request thread.

**Maintainability**
- New abstraction used exactly once (premature).
- Dead code, commented-out blocks, TODOs without owner.
- Tests: does the change add tests for the new behavior and its failure modes?

## Output template

ALWAYS use this exact structure:

```
## Review: <one-line summary of the change>

**Verdict:** APPROVE / APPROVE-WITH-NITS / REQUEST-CHANGES / BLOCK

### Blockers
- [file:line] <finding> — <why it breaks> — <suggested fix>

### Major
- [file:line] ...

### Minor
- [file:line] ...

### Nits
- [file:line] ...

### What's good
- <1-2 genuine positives — reviewers who only criticize get ignored>
```

If a section is empty, write "None." Do not omit sections — an empty Blockers section is itself information.

## Rules

- One finding per line. Group by severity, not by file.
- Every BLOCKER/MAJOR must include *why* it fails, not just *what* to change.
- If you can't tell whether something is a bug without running it, say so explicitly rather than guessing.
- Do not comment on formatting a linter would catch — assume CI handles it.
