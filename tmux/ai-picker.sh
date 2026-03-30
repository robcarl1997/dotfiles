#!/bin/bash
tool=$(printf 'claude\ncodex\ngemini' | fzf --prompt='AI Tool: ' --height=6)
[ -z "$tool" ] && exit 0

case "$tool" in
  claude) tmux new-window -n "claude" "bash --login -c 'claude --dangerously-skip-permissions; exec bash'" ;;
  codex)  tmux new-window -n "codex"  "bash --login -c 'codex --dangerously-bypass-approvals-and-sandbox; exec bash'" ;;
  gemini) tmux new-window -n "gemini" "bash --login -c 'gemini -y; exec bash'" ;;
esac
