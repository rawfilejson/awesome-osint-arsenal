#!/usr/bin/env bash
# ===================================================================
# ⚔️  Red team / offensive
# Part of awesome-osint-arsenal v2.1
# Auto-detects: Kali / Debian / Ubuntu / Parrot / Mint / Pop!_OS /
#               Arch / Manjaro / EndeavourOS /
#               Fedora / RHEL / CentOS / Rocky / Alma
# Best support: Kali / Debian / Ubuntu (apt-based)
# ===================================================================
set -uo pipefail

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

pkg_install() {
	local pkg="$1"
	case "$PKG" in
	apt)
		if dpkg -s "$pkg" >/dev/null 2>&1; then
			skip "$pkg already installed"
			return
		fi
		if apt install -y "$pkg" >/dev/null 2>&1; then ok "$pkg (apt)"; else fail "$pkg (apt)"; fi
		;;
	pacman)
		if pacman -Qi "$pkg" >/dev/null 2>&1; then
			skip "$pkg already installed"
			return
		fi
		if pacman -S --noconfirm --needed "$pkg" >/dev/null 2>&1; then ok "$pkg (pacman)"; else fail "$pkg (pacman — may not be in repo, try AUR)"; fi
		;;
	dnf)
		if rpm -q "$pkg" >/dev/null 2>&1; then
			skip "$pkg already installed"
			return
		fi
		if dnf install -y "$pkg" >/dev/null 2>&1; then ok "$pkg (dnf)"; else fail "$pkg (dnf — may not be in repo)"; fi
		;;
	*)
		fail "$pkg — unknown package manager, install manually"
		;;
	esac
}

install_pip() {
	local pkg="$1"
	if pip3 show "$pkg" >/dev/null 2>&1; then
		skip "$pkg (pip) already installed"
		return
	fi
	if pip3 install --break-system-packages "$pkg" >/dev/null 2>&1; then ok "$pkg (pip)"; else fail "$pkg (pip)"; fi
}
install_go() {
	local mod="$1" name="$2"
	if ! command -v go >/dev/null 2>&1; then
		fail "$name — go not installed"
		return
	fi
	if command -v "$name" >/dev/null 2>&1; then
		skip "$name already installed"
		return
	fi
	if go install "$mod" >/dev/null 2>&1; then ok "$name (go)"; else fail "$name (go)"; fi
}
install_git() {
	local repo="$1" dst="$2"
	mkdir -p /opt/osint-arsenal
	if [ -d "/opt/osint-arsenal/$dst" ]; then
		skip "$dst already cloned"
		return
	fi
	if GIT_TERMINAL_PROMPT=0 git clone --depth=1 "$repo" "/opt/osint-arsenal/$dst" >/dev/null 2>&1; then ok "$dst (git)"; else fail "$dst (git)"; fi
}
install_docker() {
	local image="$1" name="$2"
	if ! command -v docker >/dev/null 2>&1; then
		fail "$name — docker not installed"
		return
	fi
	if docker image inspect "$image" >/dev/null 2>&1; then
		skip "$name (docker) already pulled"
		return
	fi
	if docker pull "$image" >/dev/null 2>&1; then ok "$name (docker)"; else fail "$name (docker)"; fi
}

bootstrap_basics() {
	case "$PKG" in
	apt)
		apt update -y >/dev/null 2>&1 || true
		apt install -y python3 python3-pip git curl wget golang-go >/dev/null 2>&1 || true
		;;
	pacman)
		pacman -Sy --noconfirm >/dev/null 2>&1 || true
		pacman -S --noconfirm --needed python python-pip git curl wget go >/dev/null 2>&1 || true
		;;
	dnf)
		dnf install -y python3 python3-pip git curl wget golang >/dev/null 2>&1 || true
		;;
	esac
}

print_summary() {
	echo
	echo "============================================="
	echo -e "  Installed: ${GRN}$INSTALLED${NC}"
	echo -e "  Skipped:   ${YLW}$SKIPPED${NC}"
	echo -e "  Failed:    ${RED}$FAILED${NC}"
	echo "============================================="
	if ((FAILED > 0)); then
		echo -e "${RED}Failed tools:${NC} ${FAILED_TOOLS[@]:-}"
		echo "See $LOGFILE for details."
	fi
}

require_root
detect_distro
bootstrap_basics

echo
say "Installing: ⚔️ Red Team & Offensive Security (31 tools)"
install_git https://github.com/infosecn1nja/AD-Attack-Defense.git AD-Attack-Defense      # AD Attack & Defense
install_pip arjun                                                                        # Arjun
install_git https://github.com/BloodHoundAD/BloodHound.git BloodHound                    # BloodHound
install_docker specterops/bloodhound:latest 'BloodHound CE'                              # BloodHound CE
install_pip certipy-ad                                                                   # Certipy
install_pip crackmapexec                                                                 # CrackMapExec
install_go github.com/dwisiswant0/crlfuzz/cmd/crlfuzz@latest crlfuzz                     # CRLFuzz
install_go github.com/hahwul/dalfox/v2@latest v2                                         # Dalfox
pkg_install evil-winrm                                                                   # Evil-WinRM
install_git https://github.com/r0oth3x49/ghauri.git ghauri                               # Ghauri
install_go github.com/KathanP19/Gxss@latest Gxss                                         # Gxss
install_git https://github.com/HavocFramework/Havoc.git Havoc                            # Havoc
install_pip impacket                                                                     # Impacket
install_go github.com/ropnop/kerbrute@latest kerbrute                                    # Kerbrute
install_go github.com/assetnote/kiterunner/cmd/kr@latest kr                              # kiterunner
install_go github.com/Ne0nd0g/merlin@latest merlin                                       # Merlin
pkg_install metasploit-framework                                                         # Metasploit Framework
install_git https://github.com/its-a-feature/Mythic.git Mythic                           # Mythic
install_pip git
install_pip netexec                                                                          # NetExec (nxc)
install_git https://github.com/codingo/NoSQLMap.git NoSQLMap                             # NoSQLMap
install_git https://github.com/projectdiscovery/nuclei-templates.git nuclei-templates    # Nuclei Templates
install_git https://github.com/PortSwigger/param-miner.git param-miner                   # ParamMiner (Burp ext)
install_git https://github.com/swisskyrepo/PayloadsAllTheThings.git PayloadsAllTheThings # PayloadsAllTheThings
install_git https://github.com/topotam/PetitPotam.git PetitPotam                         # PetitPotam
install_git https://github.com/BC-SECURITY/Empire.git Empire                             # PowerShell Empire
install_git https://github.com/GhostPack/Rubeus.git Rubeus                               # Rubeus
install_git https://github.com/BloodHoundAD/SharpHound.git SharpHound                    # SharpHound
install_go github.com/bishopfox/sliver/server@latest server                              # Sliver
install_git https://github.com/swisskyrepo/SSRFmap.git SSRFmap                           # SSRFmap
install_git https://github.com/t3l3machus/Villain.git Villain                            # Villain
install_git https://github.com/s0md3v/XSStrike.git XSStrike                              # XSStrike

print_summary
