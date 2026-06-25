---
bc-version: [all]
domain: style
keywords: [caption, locked, enum, translation, localization, empty-caption, cig0006]
technologies: [al]
countries: [w1]
application-area: [all]
---

# CIG0006 - Locked Captions

## Description

When a caption is intentionally empty (`Caption = '';`), it must be marked with `Locked = true` on any AL element that supports captions. Empty captions should not create translation work items, and locking them prevents unnecessary translation entries.

## Best Practice

For intentionally empty captions, declare `Locked = true` on the same element, for example `Caption = '', Locked = true;`. This rule applies broadly (tables, pages, enums, and other caption-bearing elements), even though the most common case is the first enum value.

See sample: `empty-captions-must-be-locked.good.al`.

## Anti Pattern

Declaring an empty caption without `Locked = true`. This causes pointless translation handling for content that should remain empty.

See sample: `empty-captions-must-be-locked.bad.al`.
