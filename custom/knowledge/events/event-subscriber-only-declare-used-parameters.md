---
bc-version: [all]
domain: events
keywords: [eventsubscriber, parameters, signature, maintainability, readability, yagni, cig0005]
technologies: [al]
countries: [w1]
application-area: [all]
---

# CIG0005 - EventSub Parameter

## Description

Event subscriber procedures must declare only the event parameters that are actually used in the subscriber body. Avoiding unused parameters improves readability, reduces maintenance overhead when event signatures evolve, and keeps local scope lean.

## Best Practice

Start from the event signature, then keep only the parameters your subscriber logic needs. If only `sender` is used, declare only `sender`.

See sample: `event-subscriber-only-declare-used-parameters.good.al`.

## Anti Pattern

Copying the full event signature into the subscriber while using only one or a subset of the parameters. This adds noise and creates unnecessary update points when upstream signatures change.

See sample: `event-subscriber-only-declare-used-parameters.bad.al`.
