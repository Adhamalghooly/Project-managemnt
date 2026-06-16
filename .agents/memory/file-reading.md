---
name: File Reading Strategy for 30k+ line index.html
description: How to read content beyond line 21488 in the main app file
---

## The problem
The `read` tool reports `file length 21488` and refuses to go beyond, but wc -l reports 29,849 (now 30,437 lines after enhancements). grep -n returns correct line numbers beyond 21488.

## Solution
Use bash: `sed -n 'X,Yp' app/assets/public/index.html`

**Why:** The read tool has an internal limit unrelated to actual file size. bash sed has no such limit.

## Key module line numbers (approximate, may shift with edits)
- HistoricalSchedulingEngine: ~21623
- AutoScheduling: ~21887
- CapacityScheduler: ~29290
- ExecReports: ~29812
- End of file: ~30437
