---
name: repo-conventions
description: How the go-learning repo is organised, what belongs in each folder, and that code is written only on request.
metadata:
  type: project
---

Lessons live in `lessons/<NN-level>/<NN-topic>/` (demo + tests + README). Notes live in
`notes/<topic>.md`. Larger builds live in `projects/<name>/`, each its own Go module.
Anything Claude-related — skills, slash commands, subagents, memory — lives under
`.claude/` so it is versioned with the repo. The plan is in `ROADMAP.md`.

**Why:** the point of the repo is that the setup travels with it, and that the learner
writes the understanding — so the repo started as structure only, with no lesson code.

**How to apply:** do not write lesson or solution code unless asked (`/lesson` is the
explicit ask). Run `make check` before any commit. When a workflow repeats more than
twice, make it a skill in `.claude/skills/`. When a fact is worth carrying between
sessions, add a file here and index it in [[MEMORY]].

This repo is public: never store client, employer, or credential information here, and
commit with the personal noreply identity in the local git config.
