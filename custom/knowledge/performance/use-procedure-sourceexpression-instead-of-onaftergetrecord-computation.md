---
bc-version: [all]
domain: performance
keywords: [page, sourceexpression, onaftergetrecord, visibility, ui-performance, procedure-call, cigp0005]
technologies: [al]
countries: [w1]
application-area: [all]
---

# CIGP0005 - Prozeduren als SourceExpression verwenden

## Description

For page fields whose value is computed by procedure logic, prefer a procedure call directly in the field `SourceExpression` instead of precomputing in `OnAfterGetRecord()`. SourceExpression-backed evaluation is tied to field rendering, while `OnAfterGetRecord()` executes for each fetched row regardless of whether the field is shown.

## Best Practice

Bind computed fields directly, for example `field(RunningBalance; CalcRunningGLAccBalance.GetGLAccBalance(Rec))`, and avoid row-trigger calculations for values that only serve a specific field.

See sample: `use-procedure-sourceexpression-instead-of-onaftergetrecord-computation.good.al`.

## Anti Pattern

Computing a dedicated field value in `OnAfterGetRecord()` and storing it in a page variable when the value is only needed by one field, especially when that field can be hidden.

See sample: `use-procedure-sourceexpression-instead-of-onaftergetrecord-computation.bad.al`.
