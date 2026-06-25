---
bc-version: [all]
domain: style
keywords: [codeunit, naming, management, mgt, handler, helper, cohesion, cig0011]
technologies: [al]
countries: [w1]
application-area: [all]
---

# CIG0011 - Codeunit Naming

## Description

Codeunit names must describe their concrete business or technical responsibility and must not use generic umbrella terms such as `Management`, `Mgt.`, `Handler`, or `Helper`. Generic names encourage oversized codeunits with mixed responsibilities and make ownership unclear.

## Best Practice

Name codeunits from their actual function, for example `RKS Shortcut Dim. Date Check` instead of `RKS Check Date Management`. Keep each codeunit focused on one coherent responsibility.

Exception: when implementing subscriber aggregation conventions (see CIG0008), and the publisher object itself includes one of the blocked terms, subscriber codeunits may keep that source-aligned name.

See sample: `avoid-generic-management-handler-helper-codeunit-names.good.al`.

## Anti Pattern

Using generic suffixes or tokens (`Management`, `Mgt.`, `Handler`, `Helper`) as primary naming strategy, for example `RKS Check Date Management`.

See sample: `avoid-generic-management-handler-helper-codeunit-names.bad.al`.
