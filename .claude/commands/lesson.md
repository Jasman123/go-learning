---
description: Scaffold the next lesson folder from ROADMAP.md (only when I ask for it)
---

Create a lesson for: $ARGUMENTS (if empty, take the first unticked item in ROADMAP.md)

1. Pick the folder: `lessons/<NN-level>/<NN-topic>/`, numbered after the last lesson
   already in that level. Check `lessons/README.md` for the current index.
2. Create exactly three files:
   - `main.go` — a small runnable demo of the idea. Comments explain *why*, not what.
   - `main_test.go` — table-driven tests that pin down the behaviour, including the gotcha.
   - `README.md` — **Teaches**, **Run**, **How it works**, **Break it on purpose**
     (real compiler errors or test failures, copied from actually running them),
     **Exercises** (2–3, left unsolved), **Source** (link to go.dev / pkg.go.dev).
3. Standard library only.
4. Run `make check`, and run the demo so the README quotes real output.
5. Add the lesson to the index in `lessons/README.md` and tick the box in `ROADMAP.md`.
6. Show me what you created and stop. Do not commit.
