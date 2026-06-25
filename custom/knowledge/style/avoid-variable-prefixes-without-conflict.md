---
bc-version: [all]
domain: style
keywords: [variables, naming, prefix, collisions, readability, cig0001]
technologies: [al]
countries: [w1]
application-area: [all]
---

# CIG0001 - Variable Name Prefix

## Description

Variable names must not include a company or object prefix unless the scope contains a real naming conflict. Unnecessary prefixes reduce readability and make local code harder to scan. A prefix is required only when two or more variables would otherwise share the same clear base name.

## Best Practice

Use the simple semantic name when there is no conflict, for example `BillingType`. If two record variables from different tables would have the same name, keep the shared base name and add distinct prefixes only to disambiguate them, for example `KONBillingType` and `ONKBillingType`.

See sample: `avoid-variable-prefixes-without-conflict.good.al`.

## Anti Pattern

Adding prefixes to every variable by default even when only one variable exists for that concept in scope. This creates noisy names such as `KONBillingType` where `BillingType` would be unambiguous.

See sample: `avoid-variable-prefixes-without-conflict.bad.al`.
