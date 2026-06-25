---
bc-version: [all]
domain: style
keywords: [variables, naming, identifiers, object-name, special-characters, quoted-identifiers, cig0007]
technologies: [al]
countries: [w1]
application-area: [all]
---

# CIG0007 - Variable Naming

## Description

Variable names must include the referenced AL object name (full or clear abbreviation) so the type is recognizable from the identifier itself. Variable names must use normal identifiers only and must not require quotes, so spaces, dots, and other special characters are not allowed.

## Best Practice

Derive variable names from the AL object name, for example `JobWIPBuffer` for `Record "Job WIP Buffer"` and `GenJnlPostLine` for `Codeunit "Gen. Jnl.-Post Line"`. Use unquoted identifiers such as `AmountLCY`.

See sample: `variable-names-include-object-name-and-no-special-characters.good.al`.

## Anti Pattern

Using variable names that hide the object name or use quoted identifiers with special characters, for example `WIPBuffer` for `Record "Job WIP Buffer"` or `"Amount (LCY)"`.

See sample: `variable-names-include-object-name-and-no-special-characters.bad.al`.
