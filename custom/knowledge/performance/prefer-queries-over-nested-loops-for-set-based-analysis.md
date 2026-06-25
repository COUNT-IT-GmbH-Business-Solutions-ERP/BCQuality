---
bc-version: [all]
domain: performance
keywords: [query, nested-loops, set-based, aggregation, joins, sql, network, cigp0006]
technologies: [al]
countries: [w1]
application-area: [all]
---

# CIGP0006 - Queries vs Nested Loops

## Description

For set-based analysis across large datasets (joins, grouping, aggregation), prefer AL `query` objects over nested record loops. Queries execute close to SQL, reduce roundtrips, and express the intent declaratively. Nested loops should not be used for workloads that the query engine can aggregate directly.

## Best Practice

Use a query object when combining entities and calculating grouped totals (for example customer-item sales totals in a date range). Push filtering and aggregation into the query definition and consume the summarized result.

See sample: `prefer-queries-over-nested-loops-for-set-based-analysis.good.al`.

## Anti Pattern

Iterating parent and child datasets with nested loops and per-combination recalculation where the same result can be produced by a single query with links and aggregate columns.

See sample: `prefer-queries-over-nested-loops-for-set-based-analysis.bad.al`.
