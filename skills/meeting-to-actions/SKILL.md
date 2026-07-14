---
name: meeting-to-actions
description: Convert meeting notes, a transcript, or a rough recap into a clean record of decisions, owned action items, and a follow-up message. Use whenever the user pastes meeting notes or a transcript, says "summarize this meeting", "what did we decide", "pull the action items", "who owns what", or asks for a recap email after a call. Trigger even from messy or partial notes.
---

# Meeting to Actions

A meeting only pays off if decisions and owners survive it. Extract signal (decisions + actions), drop chit-chat, and make every commitment traceable to a person.

## Extraction rules

- **Decision** = a choice the group settled ("we'll go with Postgres"). Capture the decision AND its rationale if stated — future readers ask "why".
- **Action item** = something a *specific person* will *do* by *some time*. Every action needs an owner. If the notes name no owner, write `owner: UNASSIGNED` — surfacing the gap is the point.
- **Open question** = unresolved, needs a decision later. Don't fabricate resolutions.
- Discard: greetings, tangents, re-litigated points that were then dropped, filler.

## Output template

ALWAYS produce these three blocks:

```
## <Meeting> — <date>

### Decisions
1. <decision> — rationale: <if given, else "not stated">

### Action items
| # | Action | Owner | Due | Notes |
|---|--------|-------|-----|-------|
| 1 | <verb-first, concrete> | <name> | <date or "TBD"> | |

### Open questions
- <question> — <who needs to answer / by when>
```

Then, unless told not to, draft a **follow-up message** (Slack-length by default; email if the meeting was external):

```
### Follow-up draft
Subject: <meeting> — decisions & next steps
<2-3 line recap. Then the action list, each line "@owner: <action> (by <date>)". Close with the next checkpoint.>
```

## Rules

- Actions start with a verb: "Draft the RFC", not "RFC".
- Never invent an owner or a due date. `UNASSIGNED` / `TBD` are correct answers.
- If two people seem jointly responsible, name a single **directly responsible** owner and list the other as support — shared ownership means no ownership.
- Keep the recap skimmable: a busy attendee should get the gist in 15 seconds.
