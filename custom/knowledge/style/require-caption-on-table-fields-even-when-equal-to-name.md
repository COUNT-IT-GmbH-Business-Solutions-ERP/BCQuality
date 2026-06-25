---
bc-version: [all]
domain: style
keywords: [table, field, caption, translation, nab-extension, cig0002]
technologies: [al]
countries: [w1]
application-area: [all]
---

# CIG0002 - Table Field Captions

## Description

Every table field must define a `Caption`, even when the caption text is identical to the field name. This convention ensures translation workflows can reliably navigate from caption text to translation entries, including tooling such as the NAB extension.

## Best Practice

Set `Caption` on every table field declaration. If the visible text should match the field name, repeat the same text in `Caption` explicitly.

See sample: `require-caption-on-table-fields-even-when-equal-to-name.good.al`.

## Anti Pattern

Leaving out `Caption` on table fields because the field name already looks correct. This weakens translation workflows and makes localization maintenance harder.

See sample: `require-caption-on-table-fields-even-when-equal-to-name.bad.al`.
