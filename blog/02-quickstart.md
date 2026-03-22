---
title: "VibeOps Quickstart: Run a Governed FastAPI Project in 5 Minutes"
published: true
tags: fastapi, python, ai, devops
series: VibeOps
canonical_url: https://vibeopscentral.ai
---

You've heard about VibeOps — the governance layer for agentic coding. Now let's get it running.

This quickstart gets you from zero to a fully governed, AI-ready FastAPI project in under 5 minutes.

## Prerequisites

- Python 3.11+
- An AI coding assistant (Claude, Cursor, Copilot — your choice)
- Git

---

## Step 1 — Clone the FastAPI Template

```bash
git clone https://github.com/natulauchande/fastapi-vibeops-template.git my-project
cd my-project
```

This template ships with VibeOps governance baked in — no extra setup needed.

---

## Step 2 — Set Up Your Environment

This template uses **`uv`** for dependency management — not pip directly.

```bash
# Install uv if you don't have it
curl -Ls https://astral.sh/uv/install.sh | sh

# Install all dependencies (auto-resolved from pyproject.toml)
uv sync
```

No `requirements.txt` to manage. `uv sync` resolves everything automatically from `pyproject.toml`.

That's VibeOps working — even your dependency management is governed.

---

## Step 3 — Meet Your AGENTS.md

Open `AGENTS.md`. This is your **agent constitution** — the file that tells your AI assistant:

- What this project is and how it's structured
- Which conventions to follow
- What mistakes to **never** repeat
- How to behave consistently across sessions

> This file is the heart of VibeOps. Edit it before you write a single line of code.

At minimum, update:
- **Section 1 (Project Overview)** — describe what you're building
- **Section 4 (Architecture)** — confirm your design patterns
- **Section 5 (Hard Constraints)** — add any non-negotiables for your project

---

## Step 4 — Wire Up Your AI Tool

**Claude / Claude.ai**
`CLAUDE.md` in the repo root is a symlink to `AGENTS.md`. You're already set — Claude reads it automatically.

**Cursor**
Add to `.cursorrules`:
```
Read AGENTS.md before every response.
```

**Copilot / other tools**
Paste the contents of `AGENTS.md` into your system prompt or project context.

---

## Step 5 — Run Your First Vibecheck

A Vibecheck scores how well your project is set up for agentic development:

```bash
uv run vibecheck .
```

A score of **7/12 or above** means your agent will produce consistent, high-quality output with fewer corrections.

A low score means you're fighting your tools.

---

## What You Now Have

| File | What it does |
|------|--------------|
| `AGENTS.md` | Your agent's persistent identity, rules, and memory |
| `CLAUDE.md` | Symlink → AGENTS.md for Claude Code compatibility |
| `src/` | FastAPI project structure, ready to build |
| `specs/` | Where your technical design docs live |
| `tests/bdd/` | Gherkin-first test structure |

---

## What Happens Next (The VibeOps Way)

Now try giving your AI agent a real task:

> *"Build a user management and permissions system"*

A VibeOps-governed agent won't just start writing code. It will:

1. **Enter design mode** — no code yet
2. **Produce a technical spec** → `specs/user-management.md`
3. **Produce Gherkin scenarios** → `tests/bdd/features/user-management.feature`
4. **Wait for your approval** before writing a single line
5. Only **proceed** when you say so

That's the difference between a vibing agent and a **governed** agent.

---

## Next Steps

- ⭐ [Star the template on GitHub](https://github.com/natulauchande/fastapi-vibeops-template)
- 📖 Read the [12 Vibing Factors](https://vibeopscentral.ai) — the governance checklist for agentic projects
- 🏆 Share your Vibecheck Score with `#VibeOps`

---

*VibeOps — the governance layer for the agentic era.*
*[vibeopscentral.ai](https://vibeopscentral.ai)*
