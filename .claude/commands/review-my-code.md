---
description: Review Go code I wrote as a teacher would — correctness first, then the habit worth changing
---

Review: $ARGUMENTS (if empty, review the current uncommitted diff)

Read the code first, then run `go vet ./...` and `go test -race ./...` on it. Then
give me, in this order:

1. **Bugs** — anything actually wrong, with the input that breaks it. Include races,
   goroutine leaks, and ignored errors.
2. **The one habit** — the single most valuable thing to do differently next time,
   with a before/after snippet. One, not a list of ten. Say whether it matches
   Effective Go or the Go Code Review Comments, and link it.
3. **What was good** — name it specifically, so I keep doing it.

Skip style nits `gofmt` would catch. Do not rewrite the whole file. Do not commit
anything.
