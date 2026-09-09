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
