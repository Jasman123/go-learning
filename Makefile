.PHONY: fmt fmt-check vet test race check run

# `go vet` and `go test` exit non-zero ("no packages") while the module has no Go
# files. Skip them until the first .go file exists; they start enforcing automatically.
HAS_GO := $(shell find . -name '*.go' -not -path './.git/*' -print -quit)

# Rewrite files in place with gofmt.
fmt:
	gofmt -w .

# Fail (and list the files) if anything is not gofmt-clean. Used by CI.
fmt-check:
	@test -z "$$(gofmt -l .)" || { echo "needs gofmt:"; gofmt -l .; exit 1; }

vet:
	@if [ -n "$(HAS_GO)" ]; then echo "go vet ./..."; go vet ./...; else echo "no Go files yet, skipping vet"; fi

test:
	@if [ -n "$(HAS_GO)" ]; then echo "go test ./..."; go test ./...; else echo "no Go files yet, skipping test"; fi

# The race detector catches data races at runtime; run it on everything.
race:
	@if [ -n "$(HAS_GO)" ]; then echo "go test -race ./..."; go test -race ./...; else echo "no Go files yet, skipping race"; fi

# Run this before every commit. CI runs exactly this.
check: fmt-check vet race

# Usage: make run L=lessons/01-foundations/01-hello
run:
	go run ./$(L)
