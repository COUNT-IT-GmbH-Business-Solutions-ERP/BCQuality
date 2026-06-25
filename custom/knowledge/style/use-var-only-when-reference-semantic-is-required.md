---
bc-version: [all]
domain: style
keywords: [var, call-by-reference, call-by-value, parameters, mutability, readability, performance-exception, cig0010]
technologies: [al]
countries: [w1]
application-area: [all]
---

# CIG0010 - Call by reference nur wenn Variable geaendert wird

## Description

Use `var` parameters only when reference semantics are required, meaning the called procedure must mutate state that the caller observes afterwards. Do not use `var` by default for read-only access, because that weakens readability and makes intent less clear.

## Best Practice

Pass parameters by value when they are only read. Use `var` only when the procedure changes the parameter value or object state for the caller.

A performance-driven exception is allowed only for proven hot paths and must include an explicit code comment that justifies why `var` is required.

See sample: `use-var-only-when-reference-semantic-is-required.good.al`.

## Anti Pattern

Declaring parameters as `var` even though the procedure only reads them and does not change any caller-observable state.

See sample: `use-var-only-when-reference-semantic-is-required.bad.al`.
