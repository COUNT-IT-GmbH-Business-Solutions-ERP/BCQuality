---
bc-version: [all]
domain: performance
keywords: [setautocalcfields, calcfields, flowfield, sql-roundtrip, loops, cigp0002]
technologies: [al]
countries: [w1]
application-area: [all]
---

# CIGP0002 - SetAutoCalcFields vs. CalcFields

## Description

Prefer `SetAutoCalcFields` over per-row `CalcFields` when iterating records that read FlowFields. `CalcFields` inside a loop issues extra SQL operations per row, while `SetAutoCalcFields` combines FlowField retrieval with record loading and reduces roundtrips.

## Best Practice

Before `FindSet` or similar reads, declare required FlowFields via `SetAutoCalcFields(...)`, then read those FlowFields directly in the loop.

See sample: `use-setautocalcfields-instead-of-per-row-calcfields.good.al`.

## Anti Pattern

Calling `CalcFields(...)` for each row inside a loop before reading a FlowField value.

See sample: `use-setautocalcfields-instead-of-per-row-calcfields.bad.al`.
