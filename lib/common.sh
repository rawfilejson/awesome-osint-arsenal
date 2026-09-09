#!/usr/bin/env bash
# ===================================================================
# Shared helpers for awesome-osint-arsenal installers
# Sourced by the category installers; not meant to be run directly.
# Deliberately sets no shell options: each script declares its own
# `set -uo pipefail` before sourcing this file.
# ===================================================================

RED="\033[0;31m"
GRN="\033[0;32m"
YLW="\033[1;33m"
BLU="\033[0;34m"
CYN="\033[0;36m"
NC="\033[0m"
LOGFILE="${LOGFILE:-$HOME/osint-install-errors.log}"
INSTALLED=${INSTALLED:-0}
SKIPPED=${SKIPPED:-0}
FAILED=${FAILED:-0}
declare -ga FAILED_TOOLS=()

say() { echo -e "${BLU}[*]${NC} $*"; }
ok() {
	echo -e "${GRN}[✓]${NC} $*"
	INSTALLED=$((INSTALLED + 1))
}
skip() {
	echo -e "${YLW}[~]${NC} $*"
	SKIPPED=$((SKIPPED + 1))
}
fail() {
	echo -e "${RED}[✗]${NC} $*"
	FAILED=$((FAILED + 1))
	FAILED_TOOLS+=("$1")
	echo "FAIL: $*" >>"$LOGFILE"
}

require_root() {
	if [ "$EUID" -ne 0 ]; then
		echo "Please run as root: sudo bash $0"
		exit 1
	fi
}

detect_distro() {
	if [ -f /etc/os-release ]; then
		. /etc/os-release
		case "${ID,,}" in
		kali | debian | ubuntu | parrot | raspbian | linuxmint | pop | elementary) PKG="apt" ;;
		arch | manjaro | endeavouros | garuda | artix) PKG="pacman" ;;
		fedora | rhel | centos | rocky | almalinux | ol) PKG="dnf" ;;
		*) PKG="unknown" ;;
		esac
	else
		PKG="unknown"
	fi
	export PKG
	echo -e "${CYN}[i]${NC} Detected package manager: $PKG"
	if [ "$PKG" = "unknown" ]; then
		echo -e "${YLW}[!]${NC} Unknown distro — git/pip/go installs will work, system-package installs will be skipped."
	fi
}

# --- Docker -------------------------------------------------------------
# Docker is a hard prerequisite for the container-based tools (BloodHound CE,
# OpenCTI, TheHive, Cortex, Elastic, Graylog, Juice Shop, WebGoat). These are
# distributed only as registry images — the repo ships no Dockerfile, so every
# one is pulled, never built.
#
# DOCKER_STATUS memoizes the availability check so a missing or stopped Docker
# surfaces as ONE clear, actionable diagnostic instead of one opaque failure per
# image. Values: "" (unchecked), "ok", "missing" (no CLI), "down" (daemon dead).
DOCKER_STATUS="${DOCKER_STATUS:-}"

require_docker() {
	# Fast path: already determined.
	if [ -n "$DOCKER_STATUS" ]; then
		[ "$DOCKER_STATUS" = "ok" ]
		return
	fi
	if ! command -v docker >/dev/null 2>&1; then
		DOCKER_STATUS="missing"
		echo -e "${RED}[✗] Docker is required for the container-based tools below, but the 'docker' command was not found.${NC}" >&2
		echo -e "${YLW}    Install Docker Engine (https://docs.docker.com/engine/install/) or Docker Desktop, then re-run this script.${NC}" >&2
		return 1
	fi
	if ! docker info >/dev/null 2>&1; then
		DOCKER_STATUS="down"
		echo -e "${RED}[✗] Docker is installed but its daemon is not responding.${NC}" >&2
		echo -e "${YLW}    Start Docker (e.g. 'sudo systemctl start docker', or launch Docker Desktop) then re-run this script.${NC}" >&2
		return 1
	fi
	DOCKER_STATUS="ok"
	return 0
}

install_docker() {
	local image="$1" name="$2"
	if ! require_docker; then
		case "$DOCKER_STATUS" in
		missing) fail "$name — skipped: Docker not installed" ;;
		down) fail "$name — skipped: Docker daemon not running" ;;
		*) fail "$name — skipped: Docker unavailable" ;;
		esac
		return
	fi
	if docker image inspect "$image" >/dev/null 2>&1; then
		skip "$name (docker) already pulled"
		return
	fi
	if docker pull "$image" >/dev/null 2>&1; then ok "$name (docker)"; else fail "$name (docker) — pull failed"; fi
}
