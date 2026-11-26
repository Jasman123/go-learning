# Lessons

One folder per topic, grouped by level from [ROADMAP.md](../ROADMAP.md):

```
lessons/<NN-level>/<NN-topic>/
├── main.go        # small runnable demo — comments say why, not what
├── main_test.go   # table-driven tests that pin down the behaviour and the gotcha
└── README.md      # teaches / run / how it works / break it on purpose / exercises / source
```

Run one with `go run ./lessons/<NN-level>/<NN-topic>`, test it with
`go test ./lessons/<NN-level>/<NN-topic>`, or run everything with `make check`.
Use `/lesson <topic>` to scaffold the next one.

## Index

| Lesson | Level | Status |
|---|---|---|
| _none yet_ | | |
