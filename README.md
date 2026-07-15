# 🔨 SkillForge

**Production-ready Claude skills for developers, knowledge workers, and marketers.**

Skills are model-invoked playbooks: Claude loads them automatically when your request matches. These aren't "act as an expert" prompts — each one encodes a real, repeatable workflow with output templates, edge cases, and judgment rules that beat an improvised prompt.

---

> 🚀 **New — free & open source:** [**SocialForge**](https://github.com/moses607/socialforge) — 20 Claude skills that turn any capable model into a full AI social-media growth agency (hooks, viral scripts, competitor analysis, repurposing, trends, engagement + an orchestrator). MIT. ⭐ it if it helps.

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

**👉 [Buy SkillForge Pro on Gumroad — $39](https://frantzfrancois.gumroad.com/l/vhaya)**

_Instant download after checkout: a versioned `.zip` with all 9 Pro skills, under a commercial license (single user / single org). Includes 12 months of updates._

See [`CATALOG.md`](CATALOG.md) for the full skill list, [`PRICING.md`](PRICING.md) for tiers, and [`GO-TO-MARKET.md`](GO-TO-MARKET.md) for the distribution playbook.

---

## 🧠 SkillForge Master — 5 meta-skills (operate Claude like an expert)

The craft *beneath* the prompts — how to drive the model itself. Works with Opus 4.8, Sonnet 5, Haiku 4.5, Fable 5, and Claude Code.

| Skill | What it does |
|-------|--------------|
| `token-economist` | Cut tokens, cost, and latency without losing quality |
| `loop-architect` | The Looping method: agentic loops that actually converge |
| `context-engineer` | Treat the context window as your scarcest resource; stop the model "forgetting" |
| `model-router` | The right model for each job + multi-model orchestration |
| `verification-harness` | Every AI output is a hypothesis until exercised — catch confidently-wrong results |

**👉 [Get SkillForge Master — $49 (5 skills)](https://frantzfrancois.gumroad.com/l/qfcsb)**

_Instant download: 5 skills + reference files, commercial license (single user / single org), 12 months of updates._

---

## 🧬 Frontier tier — SkillForge Labs (bundle of 5)

Five **composable meta-skills** that turn any capable model (Claude, GPT-class, or your own agent) into an autonomous system — not task templates, but the *loops* a senior AI engineer runs by hand:

| Skill | What it does |
|-------|--------------|
| `meta-evolver` | Self-improvement loop: optimize any prompt/skill/agent against a real fitness function |
| `reality-simulator` | A flight simulator for decisions — model markets, businesses, and games before you commit |
| `cross-domain-synthesis` | Breakthrough ideas by transferring deep mechanisms across distant fields |
| `workflow-orchestrator` | Multi-agent teams + a persistent relational/vector/graph memory fabric, with self-healing |
| `value-amplifier` | Idea → validated MVP → growth simulation → monetization |

They compose: Meta-Evolver tunes the others; the Orchestrator runs them as a team. **You buy the loop, not the parts.**

**👉 [Get SkillForge Labs — $149 (bundle of 5)](https://frantzfrancois.gumroad.com/l/rasuld)**

_Instant download: all 5 skills + reference files, commercial license (single user / single org), 12 months of updates._

---

## How skills work

A skill is a directory with a `SKILL.md` (YAML frontmatter + instructions). Claude keeps only the one-line description in context and loads the full body when your request matches. Works across Claude Code, the Claude apps, and the API.

## License

Free pack: [MIT](LICENSE). Pro pack: commercial (see the Pro download).

## Contributing / issues

Open an issue for bugs or skill requests. PRs welcome on the free pack.
