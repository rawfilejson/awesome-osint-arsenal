#!/usr/bin/env bash
# ===================================================================
# 🔧 Misc / catch-all
# Part of awesome-osint-arsenal v2.1 (Hardened Production Edition)
# Auto-detects: Kali / Debian / Ubuntu / Parrot / Mint / Pop!_OS /
#               Arch / Manjaro / EndeavourOS /
#               Fedora / RHEL / CentOS / Rocky / Alma
# Best support: Kali / Debian / Ubuntu (apt-based)
# ===================================================================
set -uo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]:-$0}")" &>/dev/null && pwd)"
# shellcheck source=lib/common.sh
source "$SCRIPT_DIR/lib/common.sh" || { echo "FATAL: cannot find lib/common.sh" >&2; exit 1; }

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
	if command -v "$name" >/dev/null 2>&1 || [ -f "/root/go/bin/$name" ] || [ -f "$HOME/go/bin/$name" ]; then
		skip "$name already installed"
		return
	fi
	# Appending @latest ensures compliance with modern Go package management installation protocols
	if go install "${mod}@latest" >/dev/null 2>&1; then ok "$name (go)"; else fail "$name (go)"; fi
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

	# Dynamically append Go structural binaries paths into active execution scope
	export PATH="$PATH:/root/go/bin:$HOME/go/bin"
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

# ===================================================================
# Execution Flow
# ===================================================================
require_root
detect_distro
bootstrap_basics

echo
say "Installing: 📚 Learning Resources (2 tools)"
install_git https://github.com/cipher387/linux-for-OSINT-21-days.git linux-for-OSINT-21-days
install_git https://github.com/cipher387/python-for-OSINT-21-days.git python-for-OSINT-21-days

echo
say "Installing: 🔧 Miscellaneous / Niche Tools (3 tools)"

# 1. EyeWitness (Patched to automatically invoke internal dependency setup toolchain)
mkdir -p /opt/osint-arsenal
if [ -d "/opt/osint-arsenal/EyeWitness" ]; then
	skip "EyeWitness already cloned"
else
	if GIT_TERMINAL_PROMPT=0 git clone --depth=1 https://github.com/RedSiege/EyeWitness.git /opt/osint-arsenal/EyeWitness >/dev/null 2>&1; then
		say "Compiling configuration and baseline assets for EyeWitness..."
		if bash /opt/osint-arsenal/EyeWitness/Python/setup/setup.sh -y >/dev/null 2>&1; then
			ok "EyeWitness (git + set up)"
		else
			fail "EyeWitness (internal compilation layer failed)"
		fi
	else
		fail "EyeWitness (git clone failed)"
	fi
fi

# 2. OpenCV Headless (Pivoted to prevent display dependency crashes on servers or bare CLI nodes)
install_pip opencv-python-headless

# 3. Modern TruffleHog (Pivoted from the deprecated Python pip v2 build to modern v3 Go engine)
install_go github.com/trufflesecurity/trufflehog/v3 trufflehog

print_summary