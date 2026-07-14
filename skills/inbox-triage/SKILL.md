---
name: inbox-triage
description: Triage a batch of emails or messages into priority tiers and draft replies grouped by type. Use whenever the user pastes emails, forwards a thread backlog, says "help me get through my inbox", "what needs a reply", "triage these", "draft responses", or is overwhelmed by messages. Trigger even when they just paste raw email text without asking a precise question.
---

# Inbox Triage

Cut an inbox into a decision list: what needs *you*, what needs a *quick reply*, what can *wait*, and what is *noise*. Then draft the replies so the user only edits.

## Triage tiers

Sort every message into exactly one:

- **🔴 Now** — time-sensitive AND needs the user's judgment/authority (a decision, an approval, an escalation, a same-day deadline).
- **🟡 Reply** — needs a response but it's routine; a short answer clears it. Draftable in full.
- **🟢 Later** — informational, or a real task but not urgent. Note it; don't reply yet.
- **⚪ No action** — FYI, newsletters, auto-notifications, already-handled threads. Archive candidates.

Classification test for "Now": *would delaying this 24h cause a real problem the user is uniquely positioned to prevent?* If no, it's not Now.

## Output template

```
## Inbox triage — <N messages>

### 🔴 Now (<count>)
- **<sender> — <subject>**: <one line: what they need + the decision required>

### 🟡 Reply (<count>)
- **<sender> — <subject>**: <one line>
  > Draft: <complete, sendable reply — matches the sender's register>

### 🟢 Later (<count>)
- **<sender> — <subject>**: <the task/deadline to remember>

### ⚪ No action (<count>)
- <sender — subject> ×N  (grouped)
```

## Reply-drafting rules

- Match the sender's formality and length. A one-line question gets a one-line answer.
- For a "no": be brief, give one reason, offer no false hope. For a "yes": confirm the concrete next step.
- Never commit the user to a date, price, or deliverable that isn't already in the thread — leave a `[confirm: date?]` placeholder instead.
- If a message needs info only the user has, draft the reply with a bracketed blank rather than guessing.

## Rule

Lead with 🔴 Now. If there are zero Now items, say so first — that itself lowers stress.
