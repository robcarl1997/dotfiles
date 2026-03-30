#!/bin/bash
tool=$(printf 'claude\ncodex\ngemini\nall' | fzf --prompt='AI Tool: ' --height=7)
[ -z "$tool" ] && exit 0

open_tool() {
  case "$1" in
    claude) tmux new-window -n "claude" "bash --login -c 'claude --dangerously-skip-permissions; exec bash'" ;;
    codex)  tmux new-window -n "codex"  "bash --login -c 'codex --dangerously-bypass-approvals-and-sandbox; exec bash'" ;;
    gemini) tmux new-window -n "gemini" "bash --login -c 'gemini -y; exec bash'" ;;
  esac
}

if [ "$tool" = "all" ]; then
  open_tool claude
  open_tool codex
  open_tool gemini
else
  open_tool "$tool"
fi
