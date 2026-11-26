# go-learning

A personal learning repo for Go — from the first `go run` to concurrent, profiled,
production-grade services. The goal is understanding, not shipping.

Sibling of [fullstack-learning](https://github.com/Jasman123/fullstack-learning): same
habits (notes, small builds, a Claude Code setup that travels with the repo), different
language.

## Layout

```
.
├── .claude/              # Claude Code config that ships with the repo
│   ├── settings.json     # shared project settings (permissions)
│   ├── commands/         # /note, /review-my-code, /lesson
│   ├── skills/           # explain-this
│   ├── agents/           # custom subagents (none yet)
│   └── memory/           # durable notes about how this repo works
├── .github/workflows/    # CI: gofmt, go vet, go test -race
├── lessons/              # one folder per topic: runnable demo + tests + README
├── notes/                # short topic notes written after building something
├── projects/             # larger end-to-end builds, each its own Go module
├── ROADMAP.md            # zero → expert, level by level, with "done when" tests
├── CLAUDE.md             # instructions Claude reads on every session
└── Makefile              # fmt / vet / test / race / check / run
```

## How I use it

- **Learn a topic** → `/lesson <topic>` creates `lessons/<level>/<NN-topic>/`, then I
  break it on purpose and do the exercises.
- **Understood something** → `/note` writes it up in `notes/<topic>.md`.
- **Wrote code** → `/review-my-code` reviews it like a teacher.
- **Before every commit** → `make check`.

## Run

Requires Go 1.26+ (see [go.mod](go.mod)).

```sh
make check                                  # gofmt check + go vet + go test -race
make run L=lessons/01-foundations/01-hello  # run one lesson (once it exists)
go test ./...                               # everything
```

## Roadmap

Detailed in [ROADMAP.md](ROADMAP.md). Tracked loosely, not a contract.

| Level | Focus |
|---|---|
| 0 | Setup and toolchain |
| 1 | Foundations: types, slices/maps, structs, interfaces, errors, packages |
| 2 | Intermediate: generics, testing, stdlib tour, iterators, package design |
| 3 | Concurrency: goroutines, channels, `sync`, `context`, patterns |
| 4 | Backend and systems: `net/http`, SQL, `slog`, gRPC, Docker, observability |
| 5 | Expert: runtime, GC, profiling, escape analysis, `unsafe`, tooling, API design |

## Status

Scaffold only — no lessons written yet.

## A note on what goes in here

This repo is **public**. Nothing work-related, no client names, no credentials, no
`.env` files. Local-only Claude settings stay in `.claude/settings.local.json`, which
is gitignored.

## License

MIT — see [LICENSE](LICENSE).
