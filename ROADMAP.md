# Roadmap

Zero to expert, in six levels. Tracked loosely, not a contract: tick a box when a
lesson lands under [`lessons/`](lessons/). Every level ends with a **done when** test —
if you can't do it without copy-pasting, stay on the level.

## Level 0 — Setup

- [ ] Install Go; read `go version` and `go env GOPATH GOROOT GOMODCACHE`
- [ ] Modules: `go mod init`, `go.mod`, `go.sum`, `go mod tidy`
- [ ] The toolchain: `go run`, `build`, `test`, `fmt`, `vet`, `doc`
- [ ] Editor with `gopls`, format on save

**Done when:** from an empty folder you can create a module, run it, test it, and
explain what `go.mod` and `go.sum` each record.

## Level 1 — Foundations

- [ ] Values, types, zero values, constants and `iota`, shadowing with `:=`
- [ ] Control flow: `for` (the only loop), `switch`, `defer`
- [ ] Functions: multiple returns, variadics, closures, functions as values
- [ ] Arrays, slices (`len` vs `cap`, `append` aliasing), maps
- [ ] Strings, bytes, runes — UTF-8 and why `len("é")` is 2
- [ ] Pointers, structs, methods (value vs pointer receivers)
- [ ] Interfaces: implicit satisfaction, `any`, type assertions and switches
- [ ] Errors as values: wrapping with `%w`, `errors.Is`/`As`/`Join`; `panic`/`recover`
- [ ] Packages, visibility, `internal/`, project layout

**Done when:** you can write a small CLI (todo list, word counter) with tests and no
docs open for slices, maps, or errors.

## Level 2 — Intermediate

- [ ] Generics: type parameters, constraints, `cmp`, `slices`, `maps`
- [ ] Testing: table-driven, subtests, `t.Helper`, golden files, fuzzing, benchmarks,
      coverage
- [ ] Stdlib tour: `io.Reader`/`Writer`, `bufio`, `os`, `encoding/json`, `time`,
      `flag`, `log/slog`, `regexp`, `text/template`, `embed`
- [ ] Iterators: `iter.Seq`, range-over-func, range over int
- [ ] Idioms: functional options, accept interfaces / return structs, zero-value-useful
      types, struct tags

**Done when:** you can design a small library with a clean public API, full tests, and
a fuzz target, and defend each exported name.

## Level 3 — Concurrency

- [ ] Goroutines, channels (buffered, unbuffered, `close`, nil channels), `select`
- [ ] `sync`: `Mutex`, `RWMutex`, `WaitGroup`, `Once`, `Pool`; `sync/atomic`
- [ ] `context`: cancellation, deadlines, what belongs in values (little)
- [ ] `errgroup`, worker pools, pipelines, fan-out/fan-in, rate limiting, semaphores
- [ ] Goroutine leaks, data races, the race detector (`-race`)
- [ ] The Go memory model; deterministic concurrent tests (`testing/synctest`, Go 1.25+)

**Done when:** you can build a concurrent pipeline with clean shutdown, prove it has no
leaks or races, and explain every goroutine's exit path.

## Level 4 — Backend and systems

- [ ] `net/http`: handlers, the Go 1.22+ `ServeMux` patterns, middleware, `httptest`
- [ ] JSON APIs, validation, auth (sessions/JWT), graceful shutdown
- [ ] `database/sql` + a Postgres driver, migrations, transactions, connection pools
- [ ] Config, `log/slog`, metrics, tracing (OpenTelemetry)
- [ ] gRPC and protobuf
- [ ] Docker multi-stage builds, CI, deploying one static binary

**Done when:** you can ship a service with auth, a database, structured logs, health
checks, and graceful shutdown — and test it without a network.

**Project idea:** port the Express `subscription-tracker` from
[fullstack-learning](https://github.com/Jasman123/fullstack-learning) to Go.

## Level 5 — Expert

- [ ] Runtime: the scheduler (G/M/P), the GC, `GOGC`, `GOMEMLIMIT`
- [ ] Escape analysis (`-gcflags=-m`), allocation hunting, struct layout and padding
- [ ] Profiling: `pprof` (CPU, heap, goroutine, mutex, block), `runtime/trace`
- [ ] Benchmarking with evidence: `testing.B`, `benchstat`, profile-guided optimisation
- [ ] `reflect`, `unsafe`, `cgo`, build tags, `go:generate`
- [ ] Tooling: `go/ast`, `go/analysis`, writing your own linter; `govulncheck`
- [ ] Modules at scale: semantic versioning, `v2+` paths, API compatibility
- [ ] Reading the standard library source as a daily habit

**Done when:** you can take a service with a latency or memory regression, find the
cause with profiles, fix it, and show benchmark evidence — then ship a `v1` library
with a stable API.

**Capstone ideas:** a mini Redis, a reverse proxy / load balancer, a job queue with
retries and persistence.

## Primary sources

- [A Tour of Go](https://go.dev/tour/) — the interactive start
- [Effective Go](https://go.dev/doc/effective_go) and the [Language Spec](https://go.dev/ref/spec)
- [The Go Memory Model](https://go.dev/ref/mem)
- [A Guide to the Go Garbage Collector](https://go.dev/doc/gc-guide)
- [Diagnostics](https://go.dev/doc/diagnostics) — profiling, tracing, debugging
- [Go Code Review Comments](https://go.dev/wiki/CodeReviewComments) and the
  [Google Go Style Guide](https://google.github.io/styleguide/go/)
- [Standard library reference](https://pkg.go.dev/std) and the [Go blog](https://go.dev/blog/)
- [Go by Example](https://gobyexample.com/)
- Books: *The Go Programming Language* (Donovan & Kernighan), *100 Go Mistakes and How
  to Avoid Them* (Harsanyi), *Concurrency in Go* (Cox-Buday)
