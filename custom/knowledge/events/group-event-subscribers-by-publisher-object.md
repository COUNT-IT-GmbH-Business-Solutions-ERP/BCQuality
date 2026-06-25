---
bc-version: [all]
domain: events
keywords: [eventsubscriber, codeunit, file-organization, publisher-object, structure, cig0008]
technologies: [al]
countries: [w1]
application-area: [all]
---

# CIG0008 - EventSub File Name

## Description

Event subscribers must be placed in a codeunit dedicated to the publishing object they subscribe to, and that subscriber codeunit/file should be named from that publisher object. This keeps subscriber logic clearly grouped and makes navigation predictable: one subscriber codeunit (and file) per publisher object context.

## Best Practice

In a subscriber codeunit/file for `Codeunit "Purch.-Post"` (for example `PurchPost...`), include only subscribers for events published by `Codeunit "Purch.-Post"`.

See sample: `group-event-subscribers-by-publisher-object.good.al`.

## Anti Pattern

Mixing subscribers from different publishing objects in the same subscriber codeunit/file, for example combining `Codeunit "Purch.-Post"` and `Codeunit "Item Jnl.-Post"` subscribers together.

See sample: `group-event-subscribers-by-publisher-object.bad.al`.
