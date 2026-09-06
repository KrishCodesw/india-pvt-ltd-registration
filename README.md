# pvt-ltd-registration

A Claude Skill that turns Private Limited company incorporation in India into a plain-language conversation instead of a form.

Built out of a real friction problem: founders registering a Pvt Ltd company end up re-entering the same handful of facts (directors, capital, business activity, registered office) across the MCA portal, their CA's intake process, and their own notes — and most of the actual delay comes from not knowing the rules (naming conventions, fee slabs, document validity windows) rather than the data entry itself.

## What it does

Instead of presenting SPICe+'s form fields, the skill asks what a friend would ask — "what's the business?", "who's involved?", "how much are you putting in?" — and translates the answers into the MCA's schema behind the scenes. It:

- Explains jargon (DIN, DSC, authorised vs. paid-up capital) exactly when it becomes relevant, not upfront
- Enforces the real constraints conversationally (2–15 directors, at least one resident Indian, valid PAN format, capital ≤ authorised, address proof under ~2 months old)
- Flags name choices that need extra regulatory sign-off (words like "Bank", "Trust", "National") before they cause a rejection later
- Computes a live, itemised statutory fee estimate
- Produces a CA handoff packet (`.docx`) and a filing checklist once there's enough information

## What it deliberately doesn't do

It never files anything with the MCA, and it isn't a substitute for a practicing CA/CS — Indian law requires their digital signature on the actual incorporation form. This tool's job ends where a professional's begins: it gets a founder to that conversation prepared instead of starting from zero.

## Install

Requires a Claude.ai plan with Skills + code execution enabled (or Claude Code).

1. Download [`pvt-ltd-registration.skill`](./pvt-ltd-registration.skill) from this repo, or clone it and zip the `pvt-ltd-registration/` folder yourself.
2. In Claude.ai: **Settings → Capabilities → Skills → Upload skill**, or add it to a Project's skill list.
3. In Claude Code: point a plugin marketplace at this repo, or copy the folder into your skills directory.

## Structure

```
pvt-ltd-registration/
├── SKILL.md                       # conversation flow + when to trigger
└── references/
    ├── fee-rules.md                # fee-slab formulas, capital/share checks
    ├── naming-rules.md             # flagged-word list, suffix rule
    └── process-checklist.md        # 8-step filing sequence + CA packet outline
```

## Status

Early — built for one real use case, not yet run against a wide range of messy real conversations. Contributions and corrections (especially on current MCA fee schedules, which change) are welcome.

## License

MIT — see [LICENSE](./LICENSE).
