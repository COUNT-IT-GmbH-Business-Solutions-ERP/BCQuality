---
bc-version: [all]
domain: style
keywords: [eventsubscriber, events, naming, subscriber, procedure-name, cig0004]
technologies: [al]
countries: [w1]
application-area: [all]
---

# CIG0004 - EventSub Name

## Description

When subscribing to an event, the subscriber procedure name must be identical to the subscribed event name. Matching names make subscribers easier to locate and reduce ambiguity during maintenance and review.

## Best Practice

Name the subscriber procedure exactly as the event in the `EventSubscriber` attribute, for example subscribe to `'OnAfterManualReleaseSalesDoc'` with `local procedure OnAfterManualReleaseSalesDoc(...)`.

See sample: `event-subscriber-procedure-name-matches-event-name.good.al`.

## Anti Pattern

Using a custom or prefixed subscriber procedure name that differs from the event name, such as `MyLogicOnAfterManualReleaseSalesDoc` for event `'OnAfterManualReleaseSalesDoc'`.

See sample: `event-subscriber-procedure-name-matches-event-name.bad.al`.
