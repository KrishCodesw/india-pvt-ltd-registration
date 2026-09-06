# Fee estimate formulas

These are planning-stage estimates for conversation, not a live MCA quote. Always tell the user to confirm exact figures on the MCA fee calculator before paying.

## Components

**Name reservation:** flat ₹1,000.

**DSC (Digital Signature Certificate):** ₹1,500 per director, assuming every director needs a fresh one (safe default — most first-time founders don't already have one).

**DIN (Director Identification Number):** ₹500 for each director who doesn't already have a DIN. Directors who state they already have one are excluded from this line.

**MOA/AOA filing fee**, based on authorised capital, in ₹1-lakh (₹100,000) slabs:
- If authorised capital ≤ ₹10,00,000 (10 lakh): `ceil(capital / 100000) × 200`
- If authorised capital > ₹10,00,000: `10 × 200 + ceil((capital − 1000000) / 100000) × 300`

**Total estimate** = name reservation + DSC + DIN + MOA/AOA fee.

Always state explicitly what's *excluded*: the CA/CS's own professional fee (varies widely, ask them directly), state stamp duty (varies by state — Maharashtra, Punjab, Kerala etc. all differ), and GST/other licence costs if applicable.

## Capital / share sanity-check

Shares issued = issued capital ÷ face value per share.

Flag it conversationally (not as an error) when:
- Issued capital > authorised capital — not legally possible, needs correcting.
- The resulting share count doesn't divide cleanly for the ownership split the founder described (e.g. two 50/50 founders but an odd number of total shares).
- Face value is unusually high (e.g. ₹1,000/share) for a very small raise, which leaves very few total shares and can make future fundraising or ESOP allocation awkward — worth a gentle heads-up, not a hard stop.

Reasonable defaults to suggest if the founder has no preference: face value of ₹10 or ₹100 per share; issued capital equal to authorised capital for a simple new company.
