---
bc-version: [all]
domain: ui
keywords: [pageextension, addbefore, addafter, movebefore, moveafter, addlast, addfirst, movefirst, movelast, cig0009]
technologies: [al]
countries: [w1]
application-area: [all]
---

# CIG0009 - Kein addbefore, addafter, movebefore und moveafter

## Description

In page extensions, do not use relative placement directives `addbefore`, `addafter`, `movebefore`, or `moveafter`. To reduce break risk from Base App layout changes, use only stable anchor directives such as `addfirst`, `addlast`, `movefirst`, and `movelast`.

## Best Practice

When extending page layout, place new controls with `addfirst` or `addlast`, and reposition with `movefirst` or `movelast`. If users need a different position, rely on page personalization instead of fragile relative anchors.

See sample: `avoid-relative-placement-in-page-extensions.good.al`.

## Anti Pattern

Using `addbefore`, `addafter`, `movebefore`, or `moveafter` in a page extension layout section. These anchors are sensitive to upstream layout changes and can break extension behavior over time.

See sample: `avoid-relative-placement-in-page-extensions.bad.al`.
