#!/bin/bash
# SessionStart hook for the Video--editing project.
#
# Restores the ephemeral tooling this repo relies on (FFmpeg + WhisperX) in
# fresh Claude Code on the web containers. The HyperFrames skills themselves
# live in the repo (.agents/skills, .claude/skills) and need no install.
#
# Idempotent and non-interactive: safe to re-run; skips work already done.
set -euo pipefail

# Only run in the remote (Claude Code on the web) environment. Locally the
# developer manages their own tools.
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

log() { echo "[session-start] $*"; }

# --- FFmpeg (needed by HyperFrames rendering and WhisperX audio decoding) ---
if command -v ffmpeg >/dev/null 2>&1; then
  log "ffmpeg already present ($(ffmpeg -version 2>&1 | head -1 | cut -d' ' -f1-3))"
else
  log "installing ffmpeg via apt..."
  SUDO=""
  if [ "$(id -u)" -ne 0 ]; then SUDO="sudo"; fi
  export DEBIAN_FRONTEND=noninteractive
  # `apt-get update` first: stale indexes cause 404s on package fetch.
  $SUDO apt-get update -qq || true
  $SUDO apt-get install -y --no-install-recommends ffmpeg
  log "ffmpeg installed"
fi

# --- WhisperX (word-level ASR CLI, installed as an isolated uv tool) ---
if command -v whisperx >/dev/null 2>&1; then
  log "whisperx already present ($(whisperx --version 2>&1 | tail -1))"
elif command -v uv >/dev/null 2>&1; then
  log "installing whisperx via uv tool (first run downloads PyTorch, may take several minutes)..."
  uv tool install --quiet whisperx
  # uv installs executables into ~/.local/bin; make sure it's on PATH for
  # this and subsequent session commands.
  case ":$PATH:" in
    *":$HOME/.local/bin:"*) ;;
    *) echo "export PATH=\"\$HOME/.local/bin:\$PATH\"" >> "${CLAUDE_ENV_FILE:-/dev/null}" ;;
  esac
  log "whisperx installed"
else
  log "WARNING: uv not found; cannot install whisperx. Install uv first (https://docs.astral.sh/uv)."
fi

log "done"
