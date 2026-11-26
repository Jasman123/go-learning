---
name: explain-this
description: Explain a piece of Go code, a compiler error, a panic, a race report, or a concept at learning depth — what it does, why it is written that way, and what would break without it. Use when the user asks "what does this do", "why does this work", "explain", or pastes an unfamiliar error.
---

# explain-this

Explain for someone who wants to be able to rebuild it from memory, not someone
who wants it to work once.

## Steps

1. **Read the actual thing.** Open the file or run the failing command. Do not
   explain from the name alone.
2. **One-sentence summary first.** What it does, in plain words, before any detail.
3. **Walk the mechanism.** Go line by line or step by step through the part that
   carries the idea. Skip boilerplate — say you are skipping it.
4. **Name the why.** What problem does this shape solve? What was the alternative,
   and why is it worse here?
5. **Break it on purpose.** Say what would happen if a key line were removed or
   changed. This is the part that makes it stick.
6. **One thing to try.** End with a small concrete experiment the user can run.

## For compiler errors

Read `file:line:col` first, then the message. Say what the compiler was checking and
which rule of the language it enforces (unused import, unassigned variable, missing
method for an interface). State the fix and the class of mistake it belongs to.

## For panics and race reports

- **Panic:** the message (`index out of range`, `nil pointer dereference`), then the
  first frame in *their* code in the goroutine trace — not the runtime's — then the
  call that reached it.
- **Race report** (`WARNING: DATA RACE`): the two accesses and the goroutine that
  created each; say which shared variable is unprotected and which of mutex, channel,
  or atomic fits.
- **Deadlock** (`all goroutines are asleep`): say what each goroutine is blocked on.

## Avoid

- Restating the code in English with no added insight.
- Analogies that replace the mechanism instead of supporting it.
- Walls of context before the answer.
