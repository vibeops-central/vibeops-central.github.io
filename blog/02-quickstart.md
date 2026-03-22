---
title: "VibeOps Quickstart: From Clone to Governed Agent in 5 Minutes"
published: true
tags: fastapi, python, ai, devops
series: VibeOps
canonical_url: https://vibeopscentral.ai/quickstart
---

You've heard about VibeOps. Here's how it actually feels to use it.

Five minutes. Real interaction. No hand-waving.

---

## Step 1 — Configure Your Code Agent

VibeOps works with whatever AI coding tool you already use.

**Claude Code**
```bash
# CLAUDE.md in the repo root is a symlink to AGENTS.md
# Claude reads it automatically — nothing to configure
```

**Cursor**
Add to your `.cursorrules`:
```
Always read AGENTS.md at the start of every session before writing any code.
```

**Windsurf / Copilot / any tool with a system prompt**
Paste the contents of `AGENTS.md` into your project context or system prompt.

> The rule: your agent needs to read `AGENTS.md` before it does anything. That's it.

---

## Step 2 — Clone the Template

```bash
git clone https://github.com/natulauchande/fastapi-vibeops-template.git my-project
cd my-project
```

The template ships with `AGENTS.md` already written — a full agent constitution covering architecture, conventions, hard constraints, and the Feature Kickoff Protocol.

Open it. Read it. It's the most important file in the repo.

---

## Step 3 — Fire Up Your Agent

Open the project in your tool of choice and start a new session.

Your agent will read `AGENTS.md` and know:
- The stack (FastAPI, PostgreSQL, SQLAlchemy 2.0 async, Redis)
- The patterns to follow
- The mistakes it's not allowed to make
- How to handle new feature requests

Now give it something real to build.

---

## Step 4 — Prompt Your App

Here's where VibeOps earns its keep. Try this:

> **You:** `New feature: user registration and JWT authentication`

A *non-governed* agent starts writing code immediately.

A *VibeOps-governed* agent does this instead:

---

**Agent:** *Entering design mode. No code yet.*

I'll produce a spec and test scenarios for your review before writing anything.

**`specs/auth.md`** (excerpt):
```markdown
## Feature: User Registration & JWT Auth

### Scope
- POST /auth/register — create user, hash password with bcrypt
- POST /auth/login — validate credentials, return JWT access token
- JWT: RS256, 30-min expiry, user_id + roles in payload

### Hard constraints (from AGENTS.md)
- Use bcrypt directly — no passlib
- All DB calls via async SQLAlchemy session
- No synchronous code in async routes
```

**`tests/bdd/features/auth.feature`** (excerpt):
```gherkin
Feature: User Authentication

  Scenario: Successful registration
    Given no user exists with email "dev@example.com"
    When I POST /auth/register with valid credentials
    Then the response status is 201
    And a user record exists in the database

  Scenario: Login with valid credentials
    Given a user exists with email "dev@example.com"
    When I POST /auth/login with correct password
    Then the response status is 200
    And the response contains an access_token
```

*Spec and scenarios are ready. Reply **"proceed"** to begin implementation.*

---

**You:** `proceed`

**Agent:** *Implementing...*
- `src/models/user.py` — SQLAlchemy User model
- `src/routers/auth.py` — register + login endpoints
- `src/services/auth_service.py` — bcrypt hashing, JWT generation
- `tests/bdd/steps/auth_steps.py` — BDD step definitions

*All tests passing. No passlib. No sync code in async routes. Vibecheck: 10/12.*

---

That's the loop. Spec → Gherkin → Approval → Code. Every time.

---

## Why It Works

The agent didn't guess at your conventions. It didn't invent its own patterns. It read `AGENTS.md`, knew the rules, and followed them — without you having to repeat yourself.

That's what governed agentic development looks like.

---

## Next Steps

- ⭐ [Star the template on GitHub](https://github.com/natulauchande/fastapi-vibeops-template)
- 📖 Read the [12 Vibing Factors](https://vibeopscentral.ai)
- 💬 Share your Vibecheck score with `#VibeOps`

---

*VibeOps — the governance layer for the agentic era.*
*[vibeopscentral.ai](https://vibeopscentral.ai)*
