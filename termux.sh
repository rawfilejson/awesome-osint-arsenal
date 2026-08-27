#!/usr/bin/env bash
# ===================================================================
# Awesome OSINT Arsenal — Termux (Android) installer
# Optimized for ARM64/ARM environments and compilation requirements.
# ===================================================================
set -uo pipefail

RED="\033[0;31m"
GRN="\033[0;32m"
YLW="\033[1;33m"
BLU="\033[0;34m"
NC="\033[0m"
LOGFILE="$HOME/osint-install-errors.log"
: >"$LOGFILE"
INSTALLED=0
SKIPPED=0
FAILED=0
declare -a FAILED_TOOLS=()

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

install_pkg() {
  local p="$1"
  if dpkg -s "$p" >/dev/null 2>&1; then
    skip "$p already installed"
    return
  fi
  if pkg install -y "$p" >>"$LOGFILE" 2>&1; then ok "$p (pkg)"; else fail "$p (pkg)"; fi
}

install_pip() {
  local p="$1"
  if pip show "$p" >/dev/null 2>&1; then
    skip "$p (pip) already installed"
    return
  fi
  # Note: Termux occasionally requires --break-system-packages depending on python environment state
  if pip install --break-system-packages "$p" >>"$LOGFILE" 2>&1 || pip install "$p" >>"$LOGFILE" 2>&1; then 
    ok "$p (pip)"
  else 
    fail "$p (pip)"
  fi
}

install_git() {
  local repo="$1" dst="$2"
  mkdir -p "$HOME/osint-arsenal"
  if [ -d "$HOME/osint-arsenal/$dst" ]; then
    skip "$dst already cloned"
    return
  fi
  if GIT_TERMINAL_PROMPT=0 git clone --depth=1 "$repo" "$HOME/osint-arsenal/$dst" >>"$LOGFILE" 2>&1; then ok "$dst (git)"; else fail "$dst (git)"; fi
}

say "Updating Termux ecosystem repositories..."
pkg update -y >/dev/null 2>&1 || true

say "Installing system compilation environment & dependencies (Essential for ARM architecture)..."
# build-essential, clang, python-dev are REQUIRED to build wheel packages natively on Android
pkg install -y python python-pip python-dev git curl wget openssh nmap hydra perl php \
               build-essential clang libffi libjpeg-turbo libcrypt libxml2 libxslt >/dev/null 2>&1 || true
termux-setup-storage 2>/dev/null || true

say "Installing Termux-compatible tools..."
install_pkg aircrack-ng
install_pkg exiftool                                                         # FIXED: Correct Termux package name
install_pkg hydra
install_pkg john
install_pkg nmap

install_pip blackbird-osint
install_pip censys
install_pip dnsrecon
install_pip dnstwist
install_pip gitrecon
install_pip h8mail
install_pip holehe
install_pip instaloader
install_pip maigret
install_pip metagoofil
install_pip sherlock-project
install_pip shodan                                                           # FIXED: Deduplicated duplicate line entry
install_pip snoop
install_pip snscrape
install_pip social-analyzer
install_pip sublist3r
install_pip theHarvester

install_git https://github.com/Manisso/fsociety.git fsociety
install_git https://github.com/maldevel/IPGeoLocation.git IPGeoLocation
install_git https://github.com/htr-tech/nexphisher.git nexphisher            # Requires PHP (installed above)
install_git https://github.com/s0md3v/Orbit.git Orbit
install_git https://github.com/aerosol-can/PhoneSploit.git PhoneSploit
install_git https://github.com/ultrasecurity/Storm-Breaker.git Storm-Breaker # Requires PHP
install_git https://github.com/wishihab/userrecon.git userrecon
install_git https://github.com/htr-tech/zphisher.git zphisher                # Requires PHP

echo
echo "============================================="
echo -e "  Installed: ${GRN}$INSTALLED${NC}"
echo -e "  Skipped:   ${YLW}$SKIPPED${NC}"
echo -e "  Failed:    ${RED}$FAILED${NC}"
echo "============================================="
if ((FAILED > 0)); then
  echo -e "${RED}Failed tools:${NC} ${FAILED_TOOLS[*]}"
  echo "Review comprehensive build errors here: $LOGFILE"
fi
echo
echo "Tools mapped out to: $HOME/osint-arsenal/"