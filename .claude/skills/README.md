# Skills

One folder per skill. Each folder holds a `SKILL.md` with YAML frontmatter:

```yaml
---
name: skill-name
description: When Claude should load this skill. Be specific — this is the trigger.
---
```

Everything after the frontmatter is the instruction body. Supporting files
(scripts, references, templates) sit next to `SKILL.md` and are referenced by
relative path.

Invoke one with `/skill-name`, or let Claude load it automatically when the
description matches the task.
