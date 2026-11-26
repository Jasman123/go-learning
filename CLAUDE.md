# go-learning

A public learning repo for Go, zero to expert. The goal is understanding, not shipping.
The plan lives in [ROADMAP.md](ROADMAP.md).

## How to help here

- **Explain, then do.** When I ask for code, say in a line or two why it works that
  way before or after the code. I am learning the concept, not collecting files.
- **Write code only when I ask.** Do not scaffold lessons, solutions, or exercises
  unprompted. Preparing structure is fine; filling it with code is my call.
- **Small steps.** Prefer one working slice over a full scaffold I cannot read.
- **Show the failure.** If something breaks, show me the actual compiler error, panic,
  or race report and how to read it rather than silently fixing it.
- **Standard library first.** No third-party dependency unless adding one is the lesson.
- **Point at the docs.** Link the primary source (go.dev, pkg.go.dev) when a concept
  has one.

## Conventions

- Lessons: `lessons/<NN-level>/<NN-topic>/` with `main.go`, `main_test.go`, `README.md`.
- Each lesson README has: what it teaches, how to run, **break it on purpose**, exercises.
- Notes go in `notes/<topic>.md` — short, with a runnable example where possible.
- Each folder under `projects/` is its own Go module with its own README.
- Tests are table-driven with `t.Run` subtests unless there is a reason not to be.
- Before committing: `make check` (gofmt, `go vet`, `go test -race`) must pass.
- Commit messages: `area: what changed` (e.g. `lessons: add 03-slices-and-maps`).

## Do not

- Put anything work-related, client-related, or secret in this repo — it is public.
- Commit `.env` files or credentials.
- Use the global git identity here; this repo uses the personal noreply identity set
  in the local git config.
