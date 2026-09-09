#!/usr/bin/env bash
# ===================================================================
# 🛡️  Blue team / defensive + threat intel
# Part of awesome-osint-arsenal v2.1
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
	if command -v "$name" >/dev/null 2>&1 || [ -f "/root/go/bin/$name" ]; then
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
say "Installing: 🛰️ Threat Intel Platforms (2 tools)"
install_docker opencti/platform OpenCTI                    # OpenCTI
install_git https://github.com/yeti-platform/yeti.git yeti # Yeti

echo
say "Installing: 🛡️ Blue Team & Defensive Security (20 tools)"
install_git https://github.com/redcanaryco/atomic-red-team.git atomic-red-team            # Atomic Red Team
install_git https://github.com/WithSecureLabs/chainsaw.git chainsaw                       # Chainsaw
install_docker thehiveproject/cortex:latest 'Cortex (TheHive)'                            # Cortex (TheHive)
install_docker docker.elastic.co/elasticsearch/elasticsearch:latest 'Elastic Stack (ELK)' # Elastic Stack (ELK)
install_git https://github.com/falcosecurity/falco.git falco                              # Falco
install_docker graylog/graylog:latest Graylog                                             # Graylog
install_git https://github.com/Yamato-Security/hayabusa.git hayabusa                      # Hayabusa
install_git https://github.com/Neo23x0/Loki.git Loki                                      # Loki
install_git https://github.com/mitre/caldera.git caldera                                  # MITRE CALDERA
pkg_install osquery                                                                       # osquery
install_git https://github.com/activecm/rita.git rita                                     # RITA
install_git https://github.com/SigmaHQ/sigma.git sigma                                    # Sigma
install_pip sigma-cli                                                                     # sigma-cli
pkg_install snort                                                                         # Snort
pkg_install suricata                                                                      # Suricata
install_docker strangebee/thehive:latest TheHive                                          # TheHive
install_git https://github.com/aquasecurity/tracee.git tracee                             # Tracee
install_git https://github.com/Velocidex/velociraptor.git velociraptor                    # Velociraptor
install_git https://github.com/wazuh/wazuh.git wazuh                                      # Wazuh
pkg_install zeek                                                                          # Zeek (Bro)

print_summary