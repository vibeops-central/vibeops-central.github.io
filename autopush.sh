#!/bin/bash
# autopush.sh — auto-commit and push vibeops-site changes to GitHub
# Runs via cron on the Lightsail server

REPO_DIR="$HOME/.openclaw/workspace/vibeops-site"
LOG="$HOME/.openclaw/workspace/autopush.log"

cd "$REPO_DIR" || exit 1

# Only push if there are changes
if [[ -n $(git status --porcelain) ]]; then
  git add -A
  git commit -m "auto: claw update $(date '+%Y-%m-%d %H:%M')"
  git push
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] Pushed changes" >> "$LOG"
else
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] No changes" >> "$LOG"
fi
