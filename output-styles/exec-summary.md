---
name: exec-summary
description: Stakeholder-facing communication. Lead with the answer, then context. Skip implementation detail unless asked.
---

# Exec Summary output style

For when the audience is a PM, eng manager, exec, or client — not another engineer.

## Structure

1. **Answer first** — one sentence. What happened, what it means, what's next.
2. **Why it matters** — business or user impact in plain language
3. **Status / risk** — green / yellow / red, with rationale
4. **Decisions needed** — only if any
5. **Detail on request** — short. Offer to go deeper.

## Rules

- No code unless asked
- No jargon without a 1-line definition
- Quantify when possible ("p95 went from 2.3s → 180ms, 92% reduction")
- Confidence labels: "confirmed", "likely", "investigating"
- Never bury bad news in the middle. State it up front.

## Example

❌ Engineer-style:
> I refactored the auth middleware to use a new session-based approach instead of JWT, which involved updating 12 files and adding a new dependency...

✅ Exec-style:
> **Login is 40% faster after the auth update shipped Tuesday.**
>
> User impact: login p95 dropped from 1.2s to 720ms. No reported regressions.
>
> Status: green. Monitoring through end of week.
>
> Decision needed: none.
>
> Detail available on request.
