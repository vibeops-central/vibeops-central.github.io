# Quickstart — VibeOps with FastAPI

Get your first governed AI-ready project running in under 5 minutes.

---

## Prerequisites

- Python 3.10+
- An AI coding assistant (Claude, Cursor, Copilot — your choice)
- Git

---

## Step 1 — Clone the FastAPI Template

```bash
git clone https://github.com/vibeops-central/fastapi-vibeops-template.git my-project
cd my-project
```

This template ships with VibeOps governance baked in — no extra setup needed.

---

## Step 2 — Install Dependencies

```bash
python -m venv venv
source venv/bin/activate  # Windows: venv\Scripts\activate
pip install -r requirements.txt
```

---

## Step 3 — Meet Your AGENTS.md

Open `AGENTS.md`. This is your **agent constitution** — the file that tells your AI assistant:

- What this project is and how it's structured
- Which conventions to follow
- What mistakes to never repeat
- How to behave across sessions

> **This file is the heart of VibeOps.** Edit it before you write a single line of code.

At minimum, update these sections:
- `## Project Overview` — describe what you're building
- `## Stack` — confirm the tech (FastAPI, your DB, etc.)
- `## Conventions` — add any naming or structure rules you care about

---

## Step 4 — Point Your AI at AGENTS.md

**Claude / Claude.ai**
CLAUDE.md in the repo root automatically loads AGENTS.md. You're already set.

**Cursor**
Add to `.cursorrules`:
```
Read AGENTS.md before every response.
```

**Copilot / other tools**
Paste the contents of AGENTS.md into your system prompt or project context.

---

## Step 5 — Run Your First Vibecheck

A Vibecheck scores how well your project is set up for agentic development.

```bash
# Coming soon: vibeops CLI
# For now, self-assess using the checklist at vibeopscentral.ai/vibecheck
```

A score of **7/12 or above** means your agent will produce consistent, high-quality output.

---

## What You Now Have

| File | What it does |
|------|-------------|
| `AGENTS.md` | Your agent's persistent identity and rules |
| `CLAUDE.md` | Auto-loads AGENTS.md for Claude-based tools |
| `app/` | FastAPI project structure, ready to build |

---

## Next Steps

- **Add a Skill** → Load a reusable agent behaviour from [clawhub.com](https://clawhub.com)
- **Read the 12 Vibing Factors** → The governance checklist for agentic projects
- **Share your Vibecheck Score** → Tag us on X/Twitter with `#VibeOps`

---

*VibeOps — the governance layer for the agentic era.*
*[vibeopscentral.ai](https://vibeopscentral.ai)*
