# 🔨 SkillForge

**Production-ready Claude skills for developers, knowledge workers, and marketers.**

Skills are model-invoked playbooks: Claude loads them automatically when your request matches. These aren't "act as an expert" prompts — each one encodes a real, repeatable workflow with output templates, edge cases, and judgment rules that beat an improvised prompt.

---

## ✅ Free pack (this repo) — 9 skills, MIT licensed

Install in Claude Code:

```bash
/plugin marketplace add moses607/skillforge
/plugin install skillforge-free@skillforge
```

| Skill | What it does |
|-------|--------------|
| `pr-review-guardian` | Structured PR review with severity-tagged findings and a merge verdict |
| `commit-craft` | Conventional Commits + changelogs from a diff |
| `incident-postmortem` | Blameless postmortems with 5-Whys root cause and verifiable action items |
| `meeting-to-actions` | Transcript → decisions, owned action items, follow-up draft |
| `inbox-triage` | Emails → priority tiers + drafted replies |
| `weekly-review` | Guided GTD-style weekly reset and next-week planning |
| `landing-copy` | Conversion copy via hook → problem → mechanism → proof → CTA |
| `social-repurpose` | One long asset → platform-native posts (X, LinkedIn, IG, newsletter) |
| `newsletter-forge` | One-idea newsletter issues with strong opens and a single CTA |

---

## 💎 Pro pack — 9 premium skills

The higher-leverage skills — the ones worth paying for — ship separately under a commercial license:

| Skill | What it does |
|-------|--------------|
| `test-gap-hunter` | Finds untested behaviors (not just lines) and generates the missing tests |
| `api-contract-designer` | Versioned REST/GraphQL contracts + error model + OpenAPI stub |
| `refactor-surgeon` | Behavior-preserving, risk-ranked refactoring plans that stay green each step |
| `decision-brief` | One-page decision docs with a steelmanned counter-argument |
| `second-brain-capture` | Atomic, linkable Zettelkasten-style notes from any input |
| `okr-builder` | OKRs with task-vs-outcome tests and anti-gaming guardrails |
| `cold-email-sequence` | Multi-touch B2B outbound with deliverability discipline |
| `seo-brief` | Intent-driven content briefs a writer can execute to rank |
| `positioning-canvas` | Component-based product positioning (Dunford method) |

### 👉 Get the Pro pack — $39 one-time (9 skills + 12 months of updates)

- **Buy now:** _payment link coming soon_ — Gumroad / Lemon Squeezy / Stripe. Replace this line with your checkout URL once your store is live.
- **Buy directly today:** [open a purchase request »](https://github.com/moses607/skillforge/issues/new?title=SkillForge%20Pro%20purchase&body=I%27d%20like%20to%20buy%20the%20Pro%20pack.%20Please%20send%20payment%20instructions.) — you'll get a payment link and repo access within 24h.

_Delivery: after payment you're added as a collaborator on the private `skillforge-pro` repo (or sent the versioned `.zip`), under a commercial license._

See [`CATALOG.md`](CATALOG.md) for the full 18-skill list, [`PRICING.md`](PRICING.md) for tiers, and [`GO-TO-MARKET.md`](GO-TO-MARKET.md) for the distribution playbook.

---

## How skills work

A skill is a directory with a `SKILL.md` (YAML frontmatter + instructions). Claude keeps only the one-line description in context and loads the full body when your request matches. Works across Claude Code, the Claude apps, and the API.

## License

Free pack: [MIT](LICENSE). Pro pack: commercial (see the Pro download).

## Contributing / issues

Open an issue for bugs or skill requests. PRs welcome on the free pack.
