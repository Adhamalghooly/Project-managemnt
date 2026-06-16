---
name: Executive Dashboard Architecture
description: How the 7-part enhancement is structured across three JS modules
---

## Modules involved
- `HistoricalSchedulingEngine` (added ~line 21623) — builds statistical model from completed projects (excluding الإدارة الفنية), provides `predictDurationByType()`, `getFullModel()`, `getBranchProductivityIndex()`
- `AutoScheduling._getStandardDuration()` (~line 21873) — now calls HistoricalSchedulingEngine first, falls back to static _standardDurations table
- `CapacityScheduler._calcWeightedLoad()` (~line 29397) — weighted load 0-20%→1.0, 20-40%→0.9, 40-60%→0.7, 60-80%→0.4, 80-100%→0.1
- `ExecReports` (~line 29812) — full redesign: _genKpiGrid, _genHealth, _genCritical (+ high-duration filter), _genProductivity, _genScorecard, _genAdvancedAnalytics, _genPredictionAccuracy, _genSummary

## HTML sections added to #executive-reports
- `exec-kpi-grid` — 14 KPI cards
- `exec-alerts-summary` — clickable alert count cards  
- `exec-advanced-analytics` — BPI table + type stats table
- `exec-prediction-accuracy` — MAPE/MAE/RMSE metrics

## Why
- Replacing fixed _standardDurations (hardcoded per type) with historical engine gives adaptive, data-driven duration estimates
- Weighted capacity load reflects that 80%+ projects are almost done (weight 0.1) vs new ones (weight 1.0)
- ExecReports needed new panels requested by the user (KPI cards, advanced analytics, accuracy tracking)

## How to apply
- getFullModel() is expensive; call once per generateAll() session, not per project
- HistoricalSchedulingEngine excludes الإدارة الفنية — same pattern as CapacityScheduler._buildCostModel
- The `high-duration` critical type requires HistoricalSchedulingEngine to be available (safe check with typeof)
