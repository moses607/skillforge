---
name: commit-craft
description: Turn a set of code changes, a diff, or a description of work done into clean Conventional Commits and, on request, a changelog entry. Use whenever the user asks for a commit message, says "write the commit", pastes a diff and wants it committed, asks to squash/split commits, or needs a CHANGELOG or release notes — even if they just describe what they changed in plain words.
---

# Commit Craft

Produce commit messages that are greppable, machine-parseable (Conventional Commits), and honest about scope. A good commit tells a future maintainer *why*, not just *what*.

## Conventional Commit format

```
<type>(<scope>): <subject>

<body>

<footer>
```

- **type** (required): `feat`, `fix`, `refactor`, `perf`, `docs`, `test`, `build`, `ci`, `chore`, `style`, `revert`.
- **scope** (optional): the module/area touched, lowercase (`auth`, `api`, `parser`).
- **subject**: imperative mood, no trailing period, ≤50 chars. "add" not "added"/"adds".
- **body** (optional): wrap at 72 cols. Explain motivation and contrast with previous behavior. Omit for trivial changes.
- **footer**: `BREAKING CHANGE: <desc>` and/or issue refs (`Closes #123`).

## Rules for choosing type

- Bug in existing behavior → `fix`. New capability → `feat`. Neither, and no behavior change → `refactor`/`chore`.
- A change that alters an API contract → append `!` after type/scope AND a `BREAKING CHANGE:` footer.
- If a diff mixes concerns (a feat + an unrelated fix), **recommend splitting** into separate commits and draft both — do not bury a fix inside a feature commit.

## Subject line examples

Input: rewrote the token refresh so it retries on 401
Output: `fix(auth): retry token refresh on 401 response`

Input: added a config flag to disable telemetry
Output: `feat(config): add flag to disable telemetry`

Input: renamed variables and reformatted the parser, no logic change
Output: `refactor(parser): rename variables for clarity`

## Changelog / release notes (on request)

Group commits under Keep-a-Changelog headings, newest first:

```
## [x.y.z] - YYYY-MM-DD
### Added        <- feat
### Changed      <- refactor/perf with user-visible effect
### Fixed        <- fix
### Deprecated / Removed / Security  <- as applicable
```

Rewrite each line for a *reader of the product*, not a reader of the code: drop internal scopes, keep the outcome. Flag every `BREAKING CHANGE` at the top under a bold **⚠ Breaking**.

## Output

Default: emit the commit message in a fenced block, ready to paste. If multiple commits are warranted, number them and give each its own block. Add no commentary unless asked why you split them.
