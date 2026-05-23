---
name: company-brain-init
description: Bootstraps a `brain/` knowledge base in the current repo or in `~/claude-toolkit/brain/`. Creates the folder structure, INDEX.md, and starter entries. Use when starting a new job, joining a new repo, or formalizing tribal knowledge that's been floating in chats.
---

# Company Brain Init

Bootstraps a portable knowledge base for the current context (job, repo, project).

## What it does

1. Creates folder structure:
   ```
   brain/
     INDEX.md
     decisions/
     patterns/
     gotchas/
     people/
     systems/
     glossary.md
   ```
2. Seeds INDEX.md with starter sections
3. Creates 1 example entry in each category as a template
4. Prompts the user for the first real entries (interview mode)

## When to use

- New job: `cd ~/claude-toolkit && /company-brain-init`
- New repo: `cd <repo> && /company-brain-init` (creates `brain/` in repo)
- Existing brain: skill detects and offers to add, not overwrite

## Interview prompts

After scaffolding, ask:
1. "What's the #1 thing a new dev wishes they knew on day one?" → gotchas
2. "Who owns what, at a high level?" → people
3. "What's a decision in the last 6 months you'd want to remember the reasoning for?" → decisions
4. "What's a pattern this team uses that's not obvious from reading code?" → patterns

Save answers immediately, update INDEX.md.

## Hygiene

Run [[company-brain-curator]] periodically to dedupe and verify.
