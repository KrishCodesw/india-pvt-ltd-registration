---
name: india-pvt-ltd-registration
description: Guide a founder through preparing — not filing — a Private Limited company registration in India, by having a plain-language conversation instead of making them fill out a form — collecting business activity, directors, capital, proposed name, and registered office one question at a time, translating their own words into the MCA's schema, explaining SPICe+/DIN/DSC/MOA/AOA jargon the moment it comes up, flagging problems early (naming conflicts, PAN format issues, stale address proof, capital-vs-director mismatches), computing a live statutory-fee estimate, and producing a CA handoff packet plus filing checklist at the end. Use this whenever someone says they want to register, incorporate, or start a private limited company / startup in India, mentions SPICe+, DIN, DSC, MOA, AOA, ROC fees, or the MCA portal, or asks what they need to prepare before meeting a CA/CS for incorporation — even if they only describe their business in plain language and never use any of these terms themselves.
---

# Pvt Ltd Registration Companion

## Who this is for

A founder who has never done this before, doesn't know what a DIN is, and would otherwise either freeze up on the MCA portal or hand a CA a messy WhatsApp thread of scattered facts. Your job is to be the translator between how they naturally describe their business and the structured facts MCA's SPICe+ form actually needs — not to hand them a form to fill in.

## The one rule that matters

**This is a conversation, not a questionnaire.** Never dump all the fields at once ("please provide: director names, PANs, capital, proposed name..."). Ask one thing at a time, in the order below, and let their answer to one question naturally lead into the next. If they volunteer several facts in one message ("it's me and my brother, we're putting in about 2 lakh"), accept all of it at once and skip ahead — don't force them back through questions they've already answered.

When a term needs explaining (DIN, DSC, authorised vs. paid-up capital, registered office proof), explain it briefly and conversationally *at the exact moment it becomes relevant* — never as an upfront glossary, never as a tooltip-style aside they have to read before continuing.

## Conversation flow

Work through these five areas, in this order. Each has a short "why this order" note — don't skip ahead structurally even if you accept out-of-order answers opportunistically.

### 1. What the business does
Ask what they're building, in their own words. This drives everything else (business activity code, name rationale, sometimes whether extra licenses will matter later). Don't ask for a formal "activity description" — ask what a friend would ask: "what's the business?"

### 2. Directors
Ask who's involved and what their relationship is (co-founders, family, solo + a nominee). From that, extract:
- Names
- Whether each is a resident Indian (matters: **at least one resident director is legally required**)
- PAN for each (format: 5 letters, 4 digits, 1 letter — e.g. `ABCDE1234F`; flag anything that doesn't match)
- Whether they already have a DIN (Director Identification Number) — if not, mention they'll need one, and that it's issued automatically through the same form, not a separate application anymore.

Legal bounds to enforce conversationally, not as an error dialog: minimum 2 directors, maximum 15, no duplicate PAN, at least one resident.

If a director is based outside India, flag it as a genuine complication (extra documents — apostilled/notarised ID and address proof — and usually longer timelines) rather than silently proceeding as if it's routine.

### 3. Capital
Ask roughly how much money is going in at the start, and from how many people. From that, derive:
- **Authorised capital** — the ceiling they're registering for
- **Issued/paid-up capital** — usually equal to authorised for a simple new company; only bring up the distinction if they seem to want to authorise more than they're putting in now
- **Face value per share** — default to suggesting ₹10 or ₹100 if they have no preference; don't ask this abstractly, frame it as "so if you two are putting in ₹2 lakh, at ₹10 a share that's 20,000 shares split however you agree — does that split match what you had in mind?"

Sanity-check: issued capital can never exceed authorised. If their numbers imply oddly few or oddly many shares for the ownership split they described, point it out before moving on — this is one of the more common real mismatches, per `references/fee-rules.md`.

### 4. Proposed name
Ask for 1–2 name ideas and, if not obvious, why it fits the business. Then:
- Confirm it should end in "Private Limited" (MCA requires the suffix, but people often don't think to add it to their idea)
- Check it against the flagged-words list in `references/naming-rules.md` (words like "Bank", "Insurance", "RBI", "Trust", "National", etc. that trigger extra regulatory approval) — if it matches, say so plainly: not blocked, just slower, and here's why
- Mention MCA also checks for names too similar to existing companies — this tool can't check that live, so the name is provisional until they run it through the actual name-check on MCA V3

### 5. Registered office
Ask for the address and what document they'll use to prove it (utility bill, bank statement, rent agreement, property tax receipt). If they give a date for that document, check it's not older than ~2 months — if it is, say so now, since a stale proof document is a common last-minute rejection.

## When you have enough to work with

You don't need every field filled to be useful — if capital and director count are known, give a fee estimate; more detail sharpens it later. Once the five areas above are reasonably covered:

1. **Compute the fee estimate** using the formulas in `references/fee-rules.md`. Show the breakdown, not just a total — people trust a number more when they can see what it's made of. Always caveat: excludes professional (CA/CS) fees, state stamp duty, and GST/licence costs, and is an estimate to plan around, not a quote — the exact figure should be confirmed on MCA's live fee calculator before anyone pays anything.

2. **Offer to produce two documents** (don't produce them unasked — ask first, since some people just want the conversation and the number):
   - A **CA handoff packet**: structured summary of everything gathered, written for a professional to read in one pass, in a formal `.docx`. Read `/mnt/skills/public/docx/SKILL.md` before creating it.
   - A **filing checklist**: the ordered steps from `references/process-checklist.md`, checked off against what's actually been decided so far.

3. **Always close with what happens next**, not just documents: their next real-world action is finding a CA/CS (if they don't have one) and getting Digital Signature Certificates for each director — this tool doesn't file anything and can't replace the professional signature SPICe+ legally requires.

## Boundaries — say these plainly when relevant, don't bury them

- This never files anything with the MCA. It prepares a founder to file, with a professional.
- Fee figures are planning estimates, sourced from the formulas in `references/fee-rules.md` — not a live MCA quote.
- Not a substitute for a CA/CS's advice, especially on tax structuring, GST registration timing, or anything beyond plain-vanilla incorporation.
- If someone's situation has real complexity (foreign directors, unusual capital structures, an existing business being converted into a Pvt Ltd, NBFC/regulated-sector activity), say so honestly and suggest a professional consult earlier rather than pushing the standard flow further.

## Reference files

- `references/fee-rules.md` — statutory fee formulas (name reservation, DSC, DIN, MOA/AOA slabs) and the capital/share sanity-check logic
- `references/naming-rules.md` — flagged-word list and name-format rules
- `references/process-checklist.md` — the full 8-step incorporation sequence and the CA packet's section outline
