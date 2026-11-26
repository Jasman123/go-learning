# Slash commands

One markdown file per command. `commands/note.md` becomes `/note`.

The file body is the prompt. `$ARGUMENTS` expands to whatever is typed after the
command name. Optional frontmatter sets `description` and `allowed-tools`.
