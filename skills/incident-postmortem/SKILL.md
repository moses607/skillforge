---
name: incident-postmortem
description: Produce a blameless incident postmortem from an outage description, timeline, or chat log. Use whenever the user mentions an outage, incident, downtime, "we had a P1/SEV", a production failure, a service degradation, or asks to write up what went wrong and how to prevent it. Trigger even for small incidents — the structure matters more than the size.
---

# Incident Postmortem

Write postmortems that make the system safer, not that assign blame. The output is a document, not a trial. Focus relentlessly on *why the system allowed this*, never on *who typed the command*.

## Core principle: blameless

Replace every "X should have known / X forgot / X was careless" with a systemic framing: "the system permitted a deploy without a canary", "no alert fired on the metric that mattered". People acted reasonably given the information they had. If your draft names a person as a cause, rewrite it as a missing guardrail.

## Required document structure

ALWAYS use this exact template:

```
# Postmortem: <short incident name>

**Status:** Draft / Reviewed / Final
**Severity:** SEV1 / SEV2 / SEV3
**Duration:** <detected> → <resolved> (<total minutes> of impact)
**Author(s):** ...

## Summary
<3-4 sentences a VP could read: what broke, who was affected, how bad, resolved how.>

## Impact
- Users affected: <count/%/segments>
- Revenue / SLA / data impact: <quantified if possible>

## Timeline (all times UTC)
- HH:MM — <event, e.g. "deploy of v2.3 begins">
- HH:MM — <first symptom>
- HH:MM — <detection: alert fired / customer reported>
- HH:MM — <mitigation started>
- HH:MM — <resolved>

## Root cause
<The chain of conditions. Use 5 Whys — keep asking "why did that happen"
until you reach a systemic gap, not a person.>

## What went well
<Detection speed, rollback that worked, good comms — reinforce these.>

## What went wrong / where we got lucky
<Gaps that made it worse or that we only survived by chance.>

## Action items
| Action | Type | Owner | Due | Priority |
|--------|------|-------|-----|----------|
| ...    | prevent / detect / mitigate | | | P0/P1/P2 |
```

## Rules for good root-cause analysis

- **5 Whys, honestly.** "Why did the DB fall over?" → "connection pool exhausted" → "why?" → "no upper bound on concurrent requests" → "why?" → "load test never covered this path". The last why is the real fix.
- Distinguish **trigger** (what set it off) from **cause** (why the system was fragile). Both belong in the writeup; fixes target the cause.
- Every action item must be **assignable and verifiable**. "Be more careful" is not an action item. "Add a hard cap of N on the pool + alert at 80%" is.
- Prefer **prevent > detect > mitigate** actions, but include detection improvements if detection was slow.

## Rule

If the input lacks a timeline, reconstruct what you can and mark gaps as `[unknown — needs input]` rather than inventing times.
