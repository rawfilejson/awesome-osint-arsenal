#!/usr/bin/env bash
# ===================================================================
# 🔍 OSINT toolkit
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
say "Installing: 👤 Username & Social Media OSINT (35 tools)"
install_git https://github.com/ArthurHeitmann/arctic_shift.git arctic_shift       # Arctic Shift
install_pip blackbird-osint                                                       # Blackbird
install_git https://github.com/misiektoja/github_monitor.git github_monitor       # github_monitor
install_pip gitrecon                                                              # Gitrecon
install_go github.com/ibnaleem/gosearch@latest gosearch                           # GoSearch
install_pip holehe                                                                # Holehe
install_git https://github.com/misiektoja/instagram_monitor.git instagram_monitor # instagram_monitor
install_pip instagram-dl                                                          # insta-dl
install_pip instaloader                                                           # Instaloader
install_pip insto                                                                 # insto
install_go github.com/tdh8316/investigo@latest investigo                          # Investigo
install_git https://github.com/l4rm4nd/LinkedInDumper.git LinkedInDumper          # LinkedInDumper
install_pip maigret                                                               # Maigret
install_pip nexfil                                                                # NExfil
install_git https://github.com/Datalux/Osintgram.git Osintgram                    # Osintgram
install_pip osrframework                                                          # OSRFramework
install_git https://github.com/seekr-osint/seekr.git seekr                        # Seekr
install_pip sherlock-project                                                      # Sherlock
install_pip snoop                                                                 # Snoop
install_pip snscrape                                                              # snscrape
install_pip social-analyzer                                                       # Social Analyzer
install_pip socialscan                                                            # socialscan
install_pip socid-extractor                                                       # Socid-extractor
install_git https://github.com/tejado/telegram-nearby-map.git telegram-nearby-map # Telegram Nearby Map
install_git https://github.com/Alb-310/TeleGram-OSINTer.git TeleGram-OSINTer      # TeleGram-OSINTer
install_pip telepathy                                                             # Telepathy
install_git https://github.com/sockysec/Telerecon.git Telerecon                   # Telerecon
install_pip telethon                                                              # Telethon
install_git https://github.com/eth0izzle/the-endorser.git the-endorser            # the-endorser
install_git https://github.com/drego85/tosint.git tosint                          # TOsint
install_pip toutatis                                                              # Toutatis
install_pip twayback                                                              # Twayback
install_pip twint                                                                 # Twint
install_git https://github.com/kaifcodec/user-scanner.git user-scanner            # user-scanner
install_git https://github.com/wishihab/userrecon.git userrecon                   # UserRecon

echo
say "Installing: 📧 Email & Phone Intelligence (13 tools)"
install_git https://github.com/keraattin/EmailAnalyzer.git EmailAnalyzer                                       # EmailAnalyzer
install_git https://github.com/Giritharram/EmailHeader-Analyzer-CLI-Python.git EmailHeader-Analyzer-CLI-Python # EmailHeader-Analyzer
install_pip ghunt                                                                                              # GHunt
install_pip h8mail                                                                                             # h8mail
install_pip ignorant                                                                                           # Ignorant
install_git https://github.com/m4ll0k/Infoga.git Infoga                                                        # Infoga
install_git https://github.com/akajhon/MailHeaderDetective.git MailHeaderDetective                             # MailHeaderDetective
install_pip mailto-analyzer                                                                                    # mailtoanalyzer
install_pip phoneinfoga                                                                                        # PhoneInfoga
install_git https://github.com/aerosol-can/PhoneSploit.git PhoneSploit                                         # PhoneSploit
install_git https://github.com/nettitude/Prowl.git Prowl                                                       # Prowl
install_pip theHarvester                                                                                       # theHarvester
install_git https://github.com/z0m31en7/WhatMail.git WhatMail                                                  # WhatMail

echo
say "Installing: 🌐 Domain & IP / Network Recon (68 tools)"
pkg_install aircrack-ng                                                            # Aircrack-ng
install_pip py-altdns                                                              # altdns
install_go github.com/owasp-amass/amass/v4/...@master ...                          # Amass
install_go github.com/tomnomnom/anew@latest anew                                   # anew
install_go github.com/michenriksen/aquatone@latest aquatone                        # Aquatone
install_go github.com/tomnomnom/assetfinder@latest assetfinder                     # assetfinder
install_pip git                                                                    # AutoRecon
install_git https://github.com/pry0cc/axiom.git axiom                              # Axiom
install_pip bbot                                                                   # BBOT
pkg_install bettercap                                                              # Bettercap
install_git https://github.com/commixproject/commix.git commix                     # Commix
pkg_install dirb                                                                   # Dirb
install_pip dirsearch                                                              # dirsearch
install_pip dnsrecon                                                               # dnsrecon
install_pip dnstwist                                                               # dnstwist
pkg_install ettercap-common                                                        # Ettercap
pkg_install fern-wifi-cracker                                                      # Fern Wifi Cracker
pkg_install feroxbuster                                                            # Feroxbuster
install_go github.com/ffuf/ffuf/v2@latest v2                                       # ffuf
install_git https://github.com/Findomain/Findomain.git Findomain                   # Findomain
install_git https://github.com/FluxionNetwork/fluxion.git fluxion                  # Fluxion
install_go github.com/lc/gau/v2/cmd/gau@latest gau                                 # gau (getallurls)
install_go github.com/tomnomnom/gf@latest gf                                       # gf
install_go github.com/OJ/gobuster/v3@latest v3                                     # Gobuster
install_git https://github.com/jseidl/GoldenEye.git GoldenEye                      # GoldenEye
install_go github.com/jaeles-project/gospider@latest gospider                      # GoSpider
install_go github.com/sensepost/gowitness@latest gowitness                         # gowitness
install_go github.com/hakluke/hakrawler@latest hakrawler                           # hakrawler
pkg_install hcxtools                                                               # hcxtools
install_go github.com/tomnomnom/httprobe@latest httprobe                           # httprobe
install_go github.com/projectdiscovery/httpx/cmd/httpx@latest httpx                # HTTPx
install_git https://github.com/codingo/Interlace.git Interlace                     # Interlace
install_git https://github.com/maldevel/IPGeoLocation.git IPGeoLocation            # IPGeoLocation
install_git https://github.com/Threezh1/JSFinder.git JSFinder                      # JSFinder
install_go github.com/projectdiscovery/katana/cmd/katana@latest katana             # Katana
pkg_install kismet                                                                 # Kismet
install_git https://github.com/guelfoweb/knock.git knock                           # knock
install_pip knock-subdomains                                                       # Knockpy
install_git https://github.com/GerbenJavado/LinkFinder.git LinkFinder              # LinkFinder
pkg_install masscan                                                                # Masscan
install_git https://github.com/blechschmidt/massdns.git massdns                    # massdns
install_go github.com/tomnomnom/meg@latest meg                                     # meg
pkg_install metasploit-framework                                                   # Metasploit
install_go github.com/projectdiscovery/naabu/v2/cmd/naabu@latest naabu             # Naabu
pkg_install netcat-openbsd                                                         # Netcat
pkg_install nikto                                                                  # Nikto
pkg_install nmap                                                                   # Nmap
install_go github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest nuclei          # Nuclei
pkg_install openvas                                                                # OpenVAS
install_pip paramspider                                                            # ParamSpider
install_git https://github.com/s0md3v/Photon.git Photon                            # Photon
pkg_install reaver                                                                 # Reaver
install_git https://github.com/six2dez/reconftw.git reconftw                       # reconFTW
install_git https://github.com/RustScan/RustScan.git RustScan                      # RustScan
install_pip shodan                                                                 # Shodan
install_go github.com/s0md3v/smap/cmd/smap@latest smap                             # smap
install_git https://github.com/1N3/Sn1per.git Sn1per                               # Sn1per
pkg_install sqlmap                                                                 # SQLMap
install_go github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest subfinder # Subfinder
install_pip sublist3r                                                              # Sublist3r
pkg_install tcpdump                                                                # tcpdump
install_git https://github.com/urbanadventurer/urlcrazy.git urlcrazy               # URLCrazy
install_go github.com/tomnomnom/waybackurls@latest waybackurls                     # waybackurls
install_git https://github.com/yan4ikyt/webhack.git webhack                        # WebHack
install_pip wfuzz                                                                  # Wfuzz
pkg_install whatweb                                                                # Whatweb
pkg_install wifite                                                                 # Wifite
pkg_install wireshark                                                              # Wireshark

echo
say "Installing: 🖼️ Image & Facial Recognition (6 tools)"
install_pip deepface                                            # DeepFace
install_git https://github.com/beurtschipper/Depix.git Depix    # Depix
pkg_install libimage-exiftool-perl                              # ExifTool
install_pip face_recognition                                    # facerecognition
install_git https://github.com/ElevenPaths/FOCA.git FOCA        # FOCA
install_git https://github.com/GuidoBartoli/sherloq.git sherloq # Sherloq

echo
say "Installing: 🕶️ Dark Web & Tor Intelligence (5 tools)"
install_git https://github.com/itsmehacker/DarkScrape.git DarkScrape  # DarkScrape
install_go github.com/s-rah/onionscan@latest onionscan                # OnionScan
install_pip onionsearch                                               # OnionSearch
install_git https://github.com/SharadKumar97/OSINT-SPY.git OSINT-SPY  # OSINT-SPY
install_git https://github.com/githacktools/TorghostNG.git TorghostNG # TorghostNG

echo
say "Installing: 💥 Data Breach & Leak Detection (11 tools)"
pkg_install cewl                                                    # CeWL
pkg_install crunch                                                  # Crunch
install_git https://github.com/Mebus/cupp.git cupp                  # Cupp
pkg_install hashcat                                                 # Hashcat
pkg_install hydra                                                   # Hydra
pkg_install john                                                    # John the Ripper
install_git https://github.com/AlessandroZ/LaZagne.git LaZagne      # LaZagne
pkg_install medusa                                                  # Medusa
install_git https://github.com/gentilkiwi/mimikatz.git mimikatz     # Mimikatz
install_git https://github.com/lgandx/Responder.git Responder       # Responder
install_git https://github.com/danielmiessler/SecLists.git SecLists # SecLists

echo
say "Installing: 🏢 Company & Business Intel (2 tools)"
install_pip opencorporates                            # opencorporates-cli
install_git https://github.com/s0md3v/Orbit.git Orbit # Orbit

echo
say "Installing: ₿ Cryptocurrency & Blockchain (1 tools)"
install_pip etherscan-python # etherscan-py

echo
say "Installing: 🦠 Malware & Threat Intelligence (2 tools)"
install_git https://github.com/MISP/MISP.git MISP # MISP
pkg_install yara                                  # YARA

echo
say "Installing: 🔍 Search & Dorking Tools (6 tools)"
install_pip censys                                                        # Censys CLI
install_git https://github.com/jgor/dork-cli.git dork-cli                 # dork-cli
install_git https://github.com/m3n0sd0n4ld/GooFuzz.git GooFuzz            # GooFuzz
install_git https://github.com/opsdisk/pagodo.git pagodo                  # Pagodo
install_pip shodan                                                        # Shodan CLI
install_go github.com/projectdiscovery/uncover/cmd/uncover@latest uncover # uncover

echo
say "Installing: 📄 Document & Metadata Analysis (10 tools)"
pkg_install autopsy                                      # Autopsy
pkg_install binwalk                                      # Binwalk
pkg_install bulk-extractor                               # Bulk Extractor
pkg_install foremost                                     # Foremost
install_go github.com/tillson/git-hound@latest git-hound # git-hound
install_go github.com/gitleaks/gitleaks/v8@latest v8     # gitleaks
install_pip metagoofil                                   # Metagoofil
pkg_install scalpel                                      # Scalpel
install_pip volatility3                                  # Volatility
install_pip xeuledoc                                     # XeuleDoc

echo
say "Installing: 🧑 People & Identity OSINT (16 tools)"
install_git https://github.com/Ignitetch/AdvPhishing.git AdvPhishing              # AdvPhishing
install_git https://github.com/An0nUD4Y/blackeye.git blackeye                     # BlackEye
install_pip crosslinked                                                           # CrossLinked
install_git https://github.com/daprofiler/DaProfiler.git DaProfiler               # DaProfiler
install_go github.com/kgretzky/evilginx2@latest evilginx2                         # Evilginx2
install_git https://github.com/initstring/linkedin2username.git linkedin2username # linkedin2username
install_go github.com/drk1wi/Modlishka@latest Modlishka                           # Modlishka
install_git https://github.com/Lucksi/Mr.Holmes.git Mr.Holmes                     # Mr.Holmes
install_git https://github.com/htr-tech/nexphisher.git nexphisher                 # NexPhisher
install_git https://github.com/thewhiteh4t/seeker.git seeker                      # Seeker
pkg_install set                                                                   # SET (Social Engineering Toolkit)
install_git https://github.com/UndeadSec/SocialFish.git SocialFish                # SocialFish
install_git https://github.com/ultrasecurity/Storm-Breaker.git Storm-Breaker      # Storm-Breaker
install_git https://github.com/PerezMascato/URLCADIZ.git URLCADIZ                 # URLCADIZ
install_pip zehef                                                                 # Zehef
install_git https://github.com/htr-tech/zphisher.git zphisher                     # Zphisher

echo
say "Installing: 📡 IoT & Device Intelligence (10 tools)"
install_git https://github.com/AhMyth/AhMyth-Android-RAT.git AhMyth-Android-RAT # AhMyth Android RAT
pkg_install apktool                                                             # Apktool
install_pip frida-tools                                                         # Frida
install_pip greynoise                                                           # GreyNoise CLI
pkg_install jadx                                                                # jadx
install_git https://github.com/g0tmi1k/msfpc.git msfpc                          # MSFPC
install_pip objection                                                           # Objection
install_pip shodan                                                              # Shodan (IoT)
install_git https://github.com/shubhamrooter/ShodanSpider.git ShodanSpider      # ShodanSpider
install_pip zoomeye                                                             # ZoomEye CLI

echo
say "Installing: 🧰 Frameworks & All-in-One Platforms (12 tools)"
install_git https://github.com/thewhiteh4t/FinalRecon.git FinalRecon # FinalRecon
install_git https://github.com/Manisso/fsociety.git fsociety         # fsociety
install_git https://github.com/Z4nzu/hackingtool.git hackingtool     # Hackingtool
install_pip harpoon                                                  # Harpoon
pkg_install maltego                                                  # Maltego
install_git https://github.com/ninoseki/mitaka.git mitaka            # Mitaka
install_git https://github.com/loseys/Oblivion.git Oblivion          # Oblivion
install_git https://github.com/Bafomet666/OSINT-SAN.git OSINT-SAN    # OSINT-SAN
install_git https://github.com/j3ssie/osmedeus.git osmedeus          # osmedeus
install_pip recon-ng                                                 # Recon-ng
pkg_install sn0int                                                   # sn0int
install_pip spiderfoot                                               # SpiderFoot

echo
say "Installing: 🔒 Free VPN & Privacy Tools (12 tools)"
install_git https://github.com/trailofbits/algo.git algo                 # Algo VPN
install_git https://github.com/HACK3RY2J/Anon-SMS.git Anon-SMS           # Anon-SMS
install_git https://github.com/Und3rf10w/kali-anonsurf.git kali-anonsurf # Anonsurf
pkg_install bleachbit                                                    # BleachBit
pkg_install macchanger                                                   # MAC Changer
pkg_install mullvad-vpn                                                  # Mullvad VPN
pkg_install openvpn                                                      # OpenVPN
install_pip protonvpn-cli                                                # Proton VPN Free
pkg_install riseup-vpn                                                   # RiseupVPN
pkg_install torbrowser-launcher                                          # Tor Browser
pkg_install veracrypt                                                    # VeraCrypt
pkg_install wireguard                                                    # WireGuard

print_summary