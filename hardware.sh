#!/usr/bin/env bash
# ===================================================================
# 🔌 Hardware Hacking & SDR
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
		apt install -y python3 python3-pip git curl wget golang-go build-essential udev >/dev/null 2>&1 || true
		;;
	pacman)
		pacman -Sy --noconfirm >/dev/null 2>&1 || true
		pacman -S --noconfirm --needed python python-pip git curl wget go base-devel >/dev/null 2>&1 || true
		;;
	dnf)
		dnf groupinstall -y "Development Tools" >/dev/null 2>&1 || true
		dnf install -y python3 python3-pip git curl wget golang systemd-udev >/dev/null 2>&1 || true
		;;
	esac

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
say "Installing: 🔌 Hardware Hacking & SDR (10 tools)"

# Firmadyne & Firmwalker Core Repositories
install_git https://github.com/firmadyne/firmadyne.git firmadyne
install_git https://github.com/craigz28/firmwalker.git firmwalker

# Hardware Utilities & Signal Frameworks
pkg_install flashrom
pkg_install gnuradio
pkg_install gqrx-sdr
pkg_install openocd

# SDR Radio / Hardware Tooling Packages
# (Handles varying package definitions between distributions gracefully)
if [ "$PKG" = "apt" ]; then
	pkg_install hackrf
	pkg_install rtl-sdr
	pkg_install ubertooth
elif [ "$PKG" = "pacman" ]; then
	pkg_install hackrf
	pkg_install rtl-sdr
	pkg_install ubertooth
elif [ "$PKG" = "dnf" ]; then
	pkg_install hackrf-tools
	pkg_install rtl-sdr
	pkg_install ubertooth
fi

# Proxmark3 Source Provisioning
# Installs compiling prerequisites based on platform to prepare for firmware flashing
if [ "$PKG" = "apt" ]; then
	apt install -y git build-essential libpcre3-dev qtbase5-dev libusb-1.0-0-dev gcc-arm-none-eabi libreadline-dev >/dev/null 2>&1 || true
elif [ "$PKG" = "pacman" ]; then
	pacman -S --noconfirm --needed arm-none-eabi-gcc arm-none-eabi-newlib qt5-base libusb readline >/dev/null 2>&1 || true
elif [ "$PKG" = "dnf" ]; then
	dnf install -y make gcc gcc-arm-linux-gnu qt5-qtbase-devel libusb1-devel readline-devel >/dev/null 2>&1 || true
fi
install_git https://github.com/RfidResearchGroup/proxmark3.git proxmark3

# ===================================================================
# Post-Install Kernel Optimization Layer
# ===================================================================
say "Applying hardware runtime optimizations..."

# Fix RTL-SDR DVB-T Kernel Conflict
# Prevents the native Linux kernel from claiming the SDR as a TV Tuner card
MODPROBE_CONF="/etc/modprobe.d/blacklist-rtl.conf"
if [ ! -f "$MODPROBE_CONF" ]; then
	echo -e "blacklist dvb_usb_rtl2832u\nblacklist rtl2832\nblacklist rtl2830" > "$MODPROBE_CONF"
	say "Applied kernel tuner module blacklists. Reboot or run 'rmmod dvb_usb_rtl2832u' before inserting your RTL-SDR stick."
fi

# Trigger and sync system hardware management layer
if command -v udevadm >/dev/null 2>&1; then
	udevadm control --reload-rules && udevadm trigger || true
fi

print_summary