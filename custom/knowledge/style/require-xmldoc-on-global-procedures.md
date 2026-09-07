---
bc-version: [all]
domain: style
keywords: [xmldoc, summary, param, returns, global-procedure, documentation, cig0012]
technologies: [al]
countries: [w1]
application-area: [all]
---

# CIG0012 - Global Procedure Documentation

## Description

Every global procedure (a `procedure` without the `local` modifier) must have an XML documentation header using `///`. The header must contain a meaningful `<summary>`, one `<param>` for each parameter, and a `<returns>` description when the procedure returns a value. This makes the contract of procedures visible to reviewers, maintainers, and Copilot review agents.

## Best Practice

Place the `///` header immediately above the procedure declaration. Describe the procedure's purpose in `<summary>`, document parameter meaning and relevant preconditions with `<param>`, and explain the returned value with `<returns>`. Use active wording such as `Calculates`, `Validates`, or `Returns`.

See sample: `require-xmldoc-on-global-procedures.good.al`.

## Anti Pattern

A global procedure without a `///` header, or a header that omits the parameters or return value, leaves its callable contract undocumented.

See sample: `require-xmldoc-on-global-procedures.bad.al`.
