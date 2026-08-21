<div align="center">

<img src="assets/osint_arsenal_logo.png" width="1200" alt="OSINT Arsenal"/>

<br/>

# 🔍 AWESOME OSINT ARSENAL

### The Ultimate Open-Source Intelligence + Security Toolkit

<br/>

[![Tools](https://img.shields.io/badge/Tools-753%2B-FF4444?style=for-the-badge&logo=target&logoColor=white)](https://github.com/rawfilejson/awesome-osint-arsenal)
[![Categories](https://img.shields.io/badge/Categories-50-0066CC?style=for-the-badge&logo=buffer&logoColor=white)](https://github.com/rawfilejson/awesome-osint-arsenal)
[![Version](https://img.shields.io/badge/Version-2.1-00CC66?style=for-the-badge&logoColor=white)](https://github.com/rawfilejson/awesome-osint-arsenal)
[![Updated](https://img.shields.io/badge/Updated-2026--05--10-FF8800?style=for-the-badge&logoColor=white)](https://github.com/rawfilejson/awesome-osint-arsenal)
[![Stars](https://img.shields.io/github/stars/rawfilejson/awesome-osint-arsenal?style=for-the-badge&color=gold&logo=github)](https://github.com/rawfilejson/awesome-osint-arsenal/stargazers)

<br/>

> **753+ tools · 50 categories · Multi-distro installers · Georgian OSINT · Termux support**
>
> *The most comprehensive OSINT and security toolkit on the internet — every tool with installation instructions or a verified link.*

<a href="https://www.buymeacoffee.com/rawfilejson" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me a Coffee" style="height: 60px !important;width: 217px !important;" ></a>

<br/>

### ⚡ Get everything in one command

```bash
git clone https://github.com/rawfilejson/awesome-osint-arsenal && cd awesome-osint-arsenal && sudo bash install.sh
```

### 🎯 Or pick just what you need

```bash
sudo bash osint.sh        # 🔍 OSINT only (Sherlock, Maigret, Amass, …)
```

```bash
sudo bash redteam.sh      # ⚔️  Red team (Sliver, BloodHound, Mimikatz, Nuclei, …)
```

```bash
sudo bash blueteam.sh     # 🛡️  Blue team (Wazuh, Sigma, Suricata, Velociraptor, …)
```

```bash
sudo bash forensics.sh    # 🔬 DFIR + RE (Volatility, Ghidra, radare2, …)
```

```bash
sudo bash hardware.sh     # 🔌 Hardware + SDR (binwalk, hackrf, openocd, …)
```

```bash
sudo bash labs.sh         # 🎓 Vulnerable apps for practice (DVWA, Juice Shop, …)
```

```bash
bash termux.sh            # 📱 Android (Termux subset, no sudo needed)
```

> Works on **Kali, Debian, Ubuntu, Parrot, Mint, Pop!_OS** (best — `apt`)
> Partial on **Arch / Manjaro / Fedora / RHEL** (auto-detected, falls back to git/pip/go)
> Termux subset on **Android**

<br/>

</div>

---

> [!IMPORTANT]
> ## 🙏 A note before you fork
>
> This repo has **753 tools across 50 categories**. Keeping that current — links, install commands, new tools every week — is a *lot* for one person.
>
> **If nobody helps, parts of this list will go stale.** That's just real talk.
>
> **How you can help in 30 seconds:**
> - ⭐ **Star** the repo (more stars = more contributors find it)
> - 🐛 **Spotted a dead link?** Open an issue, takes 1 minute
> - 🧩 **Adding a tool?** Skim [CONTRIBUTING.md](CONTRIBUTING.md) first — keeps your PR from getting closed
> - ☕ [**Buy me a coffee**](https://www.buymeacoffee.com/rawfilejson) so weekends keep going to this
> - 📢 **Share it** — tweet, Discord, wherever the security crowd hangs out
>
> If something's broken: **don't just complain — open an issue or PR. That's how this stays useful.**

---

> [!WARNING]
> **DISCLAIMER:** This repository is for **educational and authorized security research only**.
> Always obtain written permission before testing systems you do not own.
> The authors are **not responsible** for any misuse of the tools or techniques listed here.
> See the full [Legal Disclaimer](#%EF%B8%8F-legal-disclaimer) at the bottom.


---

## 📋 Table of Contents

<details>
<summary><b>🔭 Reconnaissance & Discovery</b> — click to expand</summary>

1. [Username & Social Media OSINT](#1-username--social-media-osint)
2. [Email OSINT Tools](#2-email-osint-tools)
3. [Phone Number OSINT](#3-phone-number-osint)
4. [Domain & IP OSINT](#4-domain--ip-osint)
5. [Geolocation & Maps OSINT](#5-geolocation--maps-osint)
6. [Image & Video OSINT](#6-image--video-osint)
7. [Facial Recognition & People Search](#7-facial-recognition--people-search)
8. [Social Media Monitoring](#8-social-media-monitoring)

</details>

<details>
<summary><b>💥 Data Breaches & Leaks</b> — click to expand</summary>

9. [Data Breach & Leak Search Engines](#9-data-breach--leak-search-engines)
10. [WikiLeaks, DDoSecrets & Whistleblower Platforms](#10-wikileaks-ddosecrets--whistleblower-platforms)
11. [Password Cracking & Credential Tools](#11-password-cracking--credential-tools)

</details>

<details>
<summary><b>🕶️ Dark Web & Privacy</b> — click to expand</summary>

12. [Dark Web Search Engines & Tools](#12-dark-web-search-engines--tools)
13. [Anonymous & Privacy Tools](#13-anonymous--privacy-tools)

</details>

<details>
<summary><b>⚔️ Offensive Security</b> (Authorized Testing Only) — click to expand</summary>

14. [Web Application OSINT & Scanning](#14-web-application-osint--scanning)
15. [Social Engineering & Phishing](#15-social-engineering--phishing)
16. [Vulnerability Scanning & Exploitation](#16-vulnerability-scanning--exploitation)
17. [Network & Wireless Tools](#17-network--wireless-tools)
18. [Mobile Hacking & Phone Exploitation](#18-mobile-hacking--phone-exploitation)

</details>

<details>
<summary><b>🧠 Intelligence & Analysis</b> — click to expand</summary>

19. [AI-Powered OSINT & Free AI Tools](#19-ai-powered-osint--free-ai-tools)
20. [Financial & Corporate Intelligence](#20-financial--corporate-intelligence)
21. [Vehicle, Property & Public Records](#21-vehicle-property--public-records)
22. [Metadata & Digital Forensics](#22-metadata--digital-forensics)

</details>

<details>
<summary><b>👁️ Surveillance & Dorking</b> — click to expand</summary>

23. [IP Camera & Webcam OSINT](#23-ip-camera--webcam-osint)
24. [Google Dorking Bible](#24-google-dorking-bible)
25. [Credential & Data Dorking](#25-credential--data-dorking)
26. [IP Tracking & Geolocation Links](#26-ip-tracking--geolocation-links)

</details>

<details>
<summary><b>🌐 Community & Platforms</b> — click to expand</summary>

27. [Telegram OSINT Bots & Channels](#27-telegram-osint-bots--channels)
28. [Russian OSINT & Person Lookup Services](#28-russian-osint--person-lookup-services)
29. [Social Media Searcher Platforms](#29-social-media-searcher-platforms)

</details>

<details>
<summary><b>🧰 Toolkits & Frameworks</b> — click to expand</summary>

30. [Termux Hacking Toolkit (Complete)](#30-termux-hacking-toolkit-complete)
31. [Kali Linux OSINT Toolkit](#31-kali-linux-osint-toolkit)
32. [All-in-One Hacking Frameworks](#32-all-in-one-hacking-frameworks)
33. [Wordlist Generation & Brute Force](#33-wordlist-generation--brute-force)

</details>

<details>
<summary><b>🖥️ Hardware & Operating Systems</b> — click to expand</summary>

34. [Hardware Hacking Tools](#34-hardware-hacking-tools)
35. [OSINT Operating Systems](#35-osint-operating-systems)

</details>

<details>
<summary><b>👨‍💻 Developer & Learning</b> — click to expand</summary>

36. [OSINT APIs & Developer Tools](#36-osint-apis--developer-tools)
37. [Browser Extensions for OSINT](#37-browser-extensions-for-osint)
38. [OSINT Learning Resources](#38-osint-learning-resources)
39. [Awesome OSINT GitHub Repos](#39-awesome-osint-github-repos)

</details>

<details>
<summary><b>⚡ Quick Reference</b> — click to expand</summary>

40. [One-Click Install Scripts](#40-one-click-install-scripts)
41. [Top 50 Must-Have Tools](#41-top-50-must-have-tools-quick-reference)

</details>


<details>
<summary><b>⚔️ Red Team & Blue Team</b> — click to expand</summary>

42. [Red Team & Offensive Security](#42--red-team--offensive-security)
43. [Blue Team & Defensive Security](#43--blue-team--defensive-security)
44. [Threat Intel Platforms](#44--threat-intel-platforms)

</details>

<details>
<summary><b>🔬 Forensics, Hardware & Training</b> — click to expand</summary>

45. [Digital Forensics & Reverse Engineering](#45--digital-forensics--reverse-engineering)
46. [Training, Labs & CTF](#46--training-labs--ctf)
47. [Bug Bounty Platforms](#47--bug-bounty-platforms)

</details>

<details>
<summary><b>📚 Knowledge & Curated Additions</b> — click to expand</summary>

48. [Learning Resources](#48--learning-resources)
49. [Extra Tools (curated additions)](#49--extra-tools-curated-additions)

</details>

<details>
<summary><b>🇬🇪 Country-Specific OSINT</b> — click to expand</summary>

50. [Georgian OSINT Arsenal](#50--georgian-osint-arsenal-500-resources)

</details>

---

## ⚙️ Installation Guide

### Quick install — Kali / Debian / Ubuntu / Parrot

```bash
git clone https://github.com/rawfilejson/awesome-osint-arsenal
```

```bash
cd awesome-osint-arsenal
```

```bash
sudo bash install.sh
```

### Pick a single stack

| Script | What it installs | Use when |
|---|---|---|
| `osint.sh` | OSINT tools (Sherlock, Maigret, Amass, theHarvester, …) | You only do recon / investigations |
| `redteam.sh` | Sliver, BloodHound, Impacket, NetExec, Mimikatz, Nuclei, … | Authorized pentesting / red team |
| `blueteam.sh` | Wazuh, Sigma, Suricata, Velociraptor, Atomic Red Team, MITRE CALDERA | SOC / detection engineering |
| `forensics.sh` | Volatility 3, Ghidra, radare2, Plaso, CyberChef, … | DFIR / malware analysis |
| `hardware.sh` | binwalk, hackrf, openocd, GNU Radio, gqrx, … | RF / IoT / firmware research |
| `labs.sh` | DVWA, Juice Shop, WebGoat (Docker) | Local practice labs |
| `termux.sh` | Android-compatible subset | Phone-based recon |

### Other Linux distros

The installers auto-detect your package manager:

| Distro | Manager | Status |
|---|---|---|
| Kali / Debian / Ubuntu / Parrot / Mint / Pop!_OS | `apt` | ✅ Best — primary target |
| Arch / Manjaro / EndeavourOS | `pacman` | 🟡 Partial (apt-only tools skip cleanly) |
| Fedora / RHEL / Rocky / Alma | `dnf` | 🟡 Partial (apt-only tools skip cleanly) |
| Termux (Android) | `pkg` | ✅ Subset only — use `bash termux.sh` |
| macOS / Windows | — | ❌ Use a Kali VM or WSL2 |

### What every installer does

- Detects your distro and uses the right package manager
- Skips what's already installed (idempotent — safe to re-run)
- Color output: 🟢 installed · 🟡 skipped · 🔴 failed
- Logs failures to `~/osint-install-errors.log`
- Prints a summary at the end
- Tools cloned via git go to `/opt/osint-arsenal/` (or `$HOME/osint-arsenal/` on Termux)

### After install — add tools to your PATH

```bash
echo 'export PATH="$PATH:/opt/osint-arsenal"' >> ~/.bashrc
```

```bash
source ~/.bashrc
```

Tools installed via `apt`/`pip`/`go install` are already on your `$PATH`.


---
## 📊 Stats at a Glance

<div align="center">

| 🛠️ Total Tools | 💻 CLI Tools | 📁 GitHub Repos | 🌐 Online Platforms | 🤖 AI Tools |
|:-:|:-:|:-:|:-:|:-:|
| **753+** | **167+** | **117+** | **461+** | **25+** |

| 🕶️ Dark Web | 🇬🇪 Georgian OSINT | 💥 Breach Engines | ⚔️ Red Team | 🛡️ Blue Team |
|:-:|:-:|:-:|:-:|:-:|
| **15+** | **500+** | **39+** | **35+** | **24+** |

| 🔬 Forensics | 🔌 Hardware | 🎓 Training | 🎯 Bug Bounty | 📂 Total Categories |
|:-:|:-:|:-:|:-:|:-:|
| **16+** | **16+** | **21+** | **12+** | **50** |

<a href="https://www.buymeacoffee.com/rawfilejson" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me a Coffee" style="height: 60px !important;width: 217px !important;" ></a>

</div>


---
## 1. Username & Social Media OSINT

> 🎯 Find accounts, profiles, and digital footprints across hundreds of platforms.
>
> **Pro tip:** Start with Sherlock for a quick sweep, then use Maigret for depth — it covers 3000+ sites.

| Tool | Description | Install / Link |
|------|-------------|----------------|
| **Sherlock** | Find usernames across 400+ social networks | `pip install sherlock-project` |
| **Maigret** | Advanced Sherlock fork — 3000+ sites | `pip install maigret` |
| **Namechk** | Username & domain availability checker | [namechk.com](https://namechk.com/) |
| **WhatsMyName** | Web-based username enumeration | [whatsmyname.app](https://whatsmyname.app/) |
| **Snoop** | Username search (Russian-focused) | `pip install snoop` |
| **UserRecon** | Bash-based username finder | `git clone https://github.com/wishihab/userrecon.git` |
| **Blackbird** | Fast username search tool | `pip install blackbird-osint` |
| **Social Analyzer** | API-based social media profiler | `pip install social-analyzer` |
| **NExfil** | Find profiles by username | `pip install nexfil` |
| **Socid-extractor** | Extract info from web pages | `pip install socid-extractor` |
| **Gitrecon** | GitHub OSINT reconnaissance | `pip install gitrecon` |
| **OSRFramework** | Username research framework | `pip install osrframework` |
| **Holehe** | Check if email is registered on 120+ sites | `pip install holehe` |
| **socialscan** | Check email/username availability | `pip install socialscan` |
| **Investigo** | Username checker (Go-based) | `go install github.com/tdh8316/investigo@latest` |
| **OSINT Framework** | Visual map of all OSINT tools | [osintframework.com](https://osintframework.com/) |
| **CheckUserNames** | Check username across multiple platforms | [checkusernames.com](https://checkusernames.com/) |
| **KnowEm** | Username search on 500+ sites | [knowem.com](https://knowem.com/) |
| **Instant Username Search** | Real-time username checker | [instantusername.com](https://instantusername.com/) |
| **Usersearch.org** | Free social network search | [usersearch.org](https://usersearch.org/) |
| **Lullar** | Free people search by email, username, or name across 175+ sites | [com.lullar.com](https://com.lullar.com/) |

<details>
<summary><b>💻 Sherlock — Install & Usage</b></summary>

```bash
# Kali Linux / Ubuntu
pip install sherlock-project
sherlock "username"

# From GitHub source (always latest)
git clone https://github.com/sherlock-project/sherlock.git
cd sherlock
pip install -r requirements.txt
python3 sherlock "username"

# Search multiple usernames at once
sherlock user1 user2 user3
```
</details>

<details>
<summary><b>💻 Maigret — Install & Usage</b></summary>

```bash
pip install maigret
maigret "username"

# From source
git clone https://github.com/soxoj/maigret.git
cd maigret
pip install -r requirements.txt
python3 -m maigret "username"

# Generate HTML report
maigret "username" --html
```
</details>

---

## 2. Email OSINT Tools

> 📧 Verify emails, find linked accounts, check breach exposure, and analyze headers.
>
> **Pro tip:** Holehe is free and fast. h8mail is best for breach correlation when API keys are configured.

| Tool | Description | Install / Link |
|------|-------------|----------------|
| **h8mail** | Email OSINT & breach hunting | `pip install h8mail` |
| **Holehe** | Check email on 120+ sites | `pip install holehe` |
| **theHarvester** | Email & domain harvester | `pip install theHarvester` |
| **EmailAnalyzer** | Analyze suspicious .eml files | `git clone https://github.com/keraattin/EmailAnalyzer` |
| **Prowl** | Email & domain reconnaissance | `git clone https://github.com/nettitude/Prowl` |
| **EmailHeader-Analyzer** | CLI email header parser + OSINT | `git clone https://github.com/Giritharram/EmailHeader-Analyzer-CLI-Python` |
| **MailHeaderDetective** | Email header forensics | `git clone https://github.com/akajhon/MailHeaderDetective` |
| **WhatMail** | Email header analysis CLI | `git clone https://github.com/z0m31en7/WhatMail` |
| **mailto_analyzer** | Email exposure analysis | `pip install mailto-analyzer` |
| **Infoga** | Email OSINT gathering | `git clone https://github.com/m4ll0k/Infoga` |
| **Hunter.io** | Find professional emails | [hunter.io](https://hunter.io/) |
| **Phonebook.cz** | Email, domain & URL search | [phonebook.cz](https://phonebook.cz/) |
| **EmailRep** | Email reputation lookup | [emailrep.io](https://emailrep.io/) |
| **Epieos** | Get info linked to email | [epieos.com](https://epieos.com/) |
| **GetNotify** | Email open tracking + geolocation | [getnotify.com](https://getnotify.com/) |
| **Snov.io** | Email finder & verifier | [snov.io](https://snov.io/) |
| **MXToolbox** | Email header analysis & DNS checks | [mxtoolbox.com](https://mxtoolbox.com/) |
| **SimpleLogin** | Email alias service for OSINT | [simplelogin.io](https://simplelogin.io/) |
| **Email-Checker** | Email validation tool | [email-checker.net](https://email-checker.net/) |
| **Voila Norbert** | Find anyone's email | [voilanorbert.com](https://voilanorbert.com/) |

<details>
<summary><b>💻 h8mail — Install & Usage</b></summary>

```bash
pip install h8mail

# Basic scan
h8mail -t "target@email.com"

# With API keys (unlocks more breach sources)
# Create config.ini with your API keys from HIBP, BreachDirectory, etc.
h8mail -t "target@email.com" -k config.ini

# Scan a list of emails
h8mail -t emails.txt
```
</details>

---

## 3. Phone Number OSINT

> 📱 Identify carriers, locations, registrations, and linked accounts from phone numbers.
>
> **Pro tip:** PhoneInfoga is the gold standard CLI tool. GetContact reveals how a number is saved by others.

| Tool | Description | Install / Link |
|------|-------------|----------------|
| **PhoneInfoga** | Advanced phone number scanner | `pip install phoneinfoga` |
| **Ignorant** | Check phone registrations on sites | `pip install ignorant` |
| **GetContact** | See how number is saved by others | [getcontact.com](https://getcontact.com/) |
| **NumVerify** | Phone number validation API | [numverify.com](https://numverify.com/) |
| **Truecaller** | Caller ID & spam lookup | [truecaller.com](https://truecaller.com/) |
| **Sync.me** | Phone number lookup | [sync.me](https://sync.me/) |
| **CallerIDTest** | Reverse phone lookup | [calleridtest.com](https://calleridtest.com/) |
| **SpyDialer** | Free reverse phone lookup | [spydialer.com](https://spydialer.com/) |
| **National Cellular Directory** | Phone owner lookup | [nationalcellulardirectory.com](https://www.nationalcellulardirectory.com/) |
| **TelPoisk** | Russian phone directory | [telpoisk.com](https://telpoisk.com/) |
| **NumLookup** | Free reverse phone lookup | [numlookup.com](https://www.numlookup.com/) |
| **Hlr-Lookups** | HLR phone number lookup | [hlr-lookups.com](https://www.hlr-lookups.com/) |
| **PhoneSploit** | ADB-based phone exploitation | `git clone https://github.com/aerosol-can/PhoneSploit` |

<details>
<summary><b>💻 PhoneInfoga — Install & Usage</b></summary>

```bash
# Binary install (Kali Linux)
curl -sSL https://raw.githubusercontent.com/sundowndev/phoneinfoga/master/support/scripts/install | bash

# Open web UI at localhost:8080
phoneinfoga serve -p 8080

# Scan from CLI
phoneinfoga scan -n "+1234567890"

# pip install (alternative)
pip install phoneinfoga
```
</details>

---

## 4. Domain & IP OSINT

> 🌐 Enumerate subdomains, query DNS records, discover IP ranges, and map attack surfaces.
>
> **Pro tip:** Run amass + subfinder together for maximum subdomain coverage, then pipe into httpx to check which hosts are live.

| Tool | Description | Install / Link |
|------|-------------|----------------|
| **Amass** | In-depth DNS enumeration | `go install github.com/owasp-amass/amass/v4/...@master` |
| **Subfinder** | Fast passive subdomain discovery | `go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest` |
| **dnsrecon** | DNS enumeration | `pip install dnsrecon` |
| **Sublist3r** | Subdomain enumeration | `pip install sublist3r` |
| **crt.sh** | Certificate transparency search | [crt.sh](https://crt.sh/) |
| **Shodan** | Internet-connected device search | [shodan.io](https://shodan.io/) |
| **Censys** | Internet-wide scan search | [censys.io](https://censys.io/) |
| **Criminal IP** | AI-powered cyber threat intelligence | [criminalip.io](https://www.criminalip.io/) |
| **VirusTotal** | Domain/IP/file analysis | [virustotal.com](https://virustotal.com/) |
| **SecurityTrails** | DNS & domain intelligence | [securitytrails.com](https://securitytrails.com/) |
| **IPGeoLocation** | IP address geolocation | `git clone https://github.com/maldevel/IPGeoLocation` |
| **Nmap** | Network scanner & mapper | `apt install nmap` |
| **Masscan** | Fastest internet port scanner | `apt install masscan` |
| **WHOIS.com** | WHOIS domain lookup | [whois.com](https://www.whois.com/) |
| **ViewDNS** | Multiple DNS tools | [viewdns.info](https://viewdns.info/) |
| **DNSDumpster** | DNS reconnaissance & mapping | [dnsdumpster.com](https://dnsdumpster.com/) |
| **Robtex** | DNS lookup visualization | [robtex.com](https://robtex.com/) |
| **ARIN WHOIS** | IP registration database | [whois.arin.net](https://whois.arin.net/) |
| **BGP Toolkit** | BGP/ASN/IP intelligence | [bgp.he.net](https://bgp.he.net/) |
| **urlscan.io** | URL/domain analysis & screenshots | [urlscan.io](https://urlscan.io/) |
| **AbuseIPDB** | IP address reputation database | [abuseipdb.com](https://www.abuseipdb.com/) |
| **Web-Check** | All-in-one website analysis | [web-check.xyz](https://web-check.xyz/) |
| **IPinfo** | IP address data & geolocation | [ipinfo.io](https://ipinfo.io/) |
| **DB-IP** | IP geolocation database | [db-ip.com](https://db-ip.com/) |

<details>
<summary><b>💻 Amass + Subfinder + HTTPx — Most effective recon combo</b></summary>

```bash
# Step 1: Enumerate subdomains passively (fast)
subfinder -d example.com -o subs.txt

# Step 2: Deep active enumeration (slower but more complete)
amass enum -d example.com -o amass_subs.txt

# Step 3: Combine and deduplicate
cat subs.txt amass_subs.txt | sort -u > all_subs.txt

# Step 4: Check which subdomains are live
cat all_subs.txt | httpx -status-code -title -o live_subs.txt

# Step 5: Screenshot all live hosts
cat live_subs.txt | eyewitness --web -d screenshots/
```
</details>

---

## 5. Geolocation & Maps OSINT

> 🗺️ Geolocate images, analyze satellite data, and verify photo locations.
>
> **Pro tip:** Combine SunCalc (shadow analysis) + ShadowMap + Mapillary for precision image geolocation.

| Tool | Description | Link |
|------|-------------|------|
| **Google Earth Pro** | Advanced satellite imagery | [earth.google.com](https://earth.google.com/) |
| **Overpass Turbo** | OpenStreetMap data query | [overpass-turbo.eu](https://overpass-turbo.eu/) |
| **SunCalc** | Sun position/time calculator from photos | [suncalc.org](https://suncalc.org/) |
| **GeoGuessr** | Geolocation training game | [geoguessr.com](https://geoguessr.com/) |
| **Sentinel Hub** | Satellite imagery access | [sentinel-hub.com](https://sentinel-hub.com/) |
| **FIRMS** | NASA fire/thermal hotspots | [firms.modaps.eosdis.nasa.gov](https://firms.modaps.eosdis.nasa.gov/) |
| **Wikimapia** | Collaborative world map | [wikimapia.org](https://wikimapia.org/) |
| **OpenStreetMap** | Free world map | [openstreetmap.org](https://openstreetmap.org/) |
| **GeoSpy** | AI-powered image geolocation | [geospy.ai](https://geospy.ai/) |
| **Mapillary** | Street-level imagery | [mapillary.com](https://mapillary.com/) |
| **Maxar** | Commercial satellite imagery | [maxar.com](https://maxar.com/) |
| **F4map** | 3D interactive world map | [demo.f4map.com](https://demo.f4map.com/) |
| **Zoom Earth** | Real-time satellite & weather | [zoom.earth](https://zoom.earth/) |
| **KartaView** | Street-level imagery (OpenStreetCam) | [kartaview.org](https://kartaview.org/) |
| **ShadowMap** | Shadow analysis for time estimation | [shadowmap.org](https://shadowmap.org/) |
| **Crime Brasil** | Brazil crime + accidents open data by neighborhood (bairro-level RS; municipal MG/RJ; PRF accidents) | [crimebrasil.com.br](https://crimebrasil.com.br) |

---

## 6. Image & Video OSINT

> 🖼️ Extract metadata, reverse search images, verify authenticity, and detect AI-generated content.
>
> **Pro tip:** Yandex reverse image search consistently outperforms Google for finding faces and locations.

| Tool | Description | Install / Link |
|------|-------------|----------------|
| **TinEye** | Reverse image search | [tineye.com](https://tineye.com/) |
| **Google Reverse Image** | Google image search | [images.google.com](https://images.google.com/) |
| **Yandex Images** | Best reverse image search for faces/places | [yandex.com/images](https://yandex.com/images) |
| **ExifTool** | Image/document metadata extraction | `apt install libimage-exiftool-perl` |
| **FOCA** | Metadata extraction from documents | [github.com/ElevenPaths/FOCA](https://github.com/ElevenPaths/FOCA) |
| **InVID** | Video verification toolkit | [invid-project.eu](https://www.invid-project.eu/) |
| **FotoForensics** | Image forensic analysis (ELA) | [fotoforensics.com](https://fotoforensics.com/) |
| **Fake Image Detector** | AI-based fake image detection | [fakeimagedetector.com](https://www.fakeimagedetector.com/) |
| **Search by Image** | Multi-engine reverse image (browser ext) | Chrome / Firefox extension |
| **Depix** | Recover pixelated text from screenshots | `git clone https://github.com/beurtschipper/Depix` |
| **Forensically** | Online image forensics suite | [29a.ch/photo-forensics](https://29a.ch/photo-forensics) |
| **AI or Not** | Detect AI-generated images | [aiornot.com](https://aiornot.com/) |
| **Hive Moderation** | AI content detection | [hivemoderation.com](https://hivemoderation.com/) |
| **Illuminarty** | AI image detection | [illuminarty.ai](https://illuminarty.ai/) |

<details>
<summary><b>💻 ExifTool — Install & Usage</b></summary>

```bash
# Install
apt-get install libimage-exiftool-perl

# Basic metadata read
exiftool image.jpg

# Extract GPS coordinates specifically
exiftool -GPSLatitude -GPSLongitude image.jpg

# Strip ALL metadata (for privacy)
exiftool -all= image.jpg

# Show all metadata groups
exiftool -a -u -g1 image.jpg

# Batch process a whole folder
exiftool /path/to/images/
```
</details>

---

## 7. Facial Recognition & People Search

> 👤 Find people across the web using photos, names, or usernames.
>
> ⚠️ **Warning:** Facial recognition has serious privacy and legal implications. Use only with explicit authorization.

| Tool | Description | Install / Link |
|------|-------------|----------------|
| **FaceSeek** | AI-powered reverse face search | [faceseek.online](https://faceseek.online/) |
| **FaceCheck.ID** | Face recognition search engine | [facecheck.id](https://facecheck.id/) |
| **PimEyes** | Face search engine from photos | [pimeyes.com](https://pimeyes.com/) |
| **Search4faces** | Face search in VK/OK social networks | [search4faces.com](https://search4faces.com/) |
| **face_recognition** | Python face recognition library | `pip install face_recognition` |
| **DeepFace** | AI face analysis (age, gender, emotion) | `pip install deepface` |
| **ThatsThem** | Free people search | [thatsthem.com](https://thatsthem.com/) |
| **Pipl** | Deep people search engine | [pipl.com](https://pipl.com/) |
| **BeenVerified** | People search & background check | [beenverified.com](https://beenverified.com/) |
| **Spokeo** | People search aggregator | [spokeo.com](https://spokeo.com/) |
| **FastPeopleSearch** | Free people finder | [fastpeoplesearch.com](https://fastpeoplesearch.com/) |
| **WebMii** | People search engine | [webmii.com](https://webmii.com/) |
| **OSINT Industries** | People search + social media lookup | [osint.industries](https://www.osint.industries/) |
| **IDCrawl** | Free people search engine | [idcrawl.com](https://www.idcrawl.com/) |

---

## 8. Social Media Monitoring

> 📡 Monitor, scrape, and investigate social media accounts and communities.
>
> **Pro tip:** Combine Osintgram (Instagram) + Telepathy (Telegram) + snscrape (Twitter/X) for full platform coverage.

| Tool | Description | Install / Link |
|------|-------------|----------------|
| **Osintgram** | Instagram OSINT tool | `git clone https://github.com/Datalux/Osintgram` |
| **Instaloader** | Instagram data downloader | `pip install instaloader` |
| **insta-dl** | Async Instagram downloader with HikerAPI and optional aiograpi backends | `pip install instagram-dl` |
| **insto** | Interactive Instagram OSINT CLI with REPL, snapshots, diffs, and Maltego exports | `pip install insto` |
| **Twint** | Twitter OSINT (no API needed) | `pip install twint` |
| **snscrape** | Social media scraper (Twitter, Reddit, etc.) | `pip install snscrape` |
| **Toutatis** | Instagram OSINT by phone/email | `pip install toutatis` |
| **TikTok Scraper** | TikTok data extraction | `npm install -g tiktok-scraper` |
| **Reddit Investigator** | Reddit user analysis | [reddit-user-analyser.netlify.app](https://reddit-user-analyser.netlify.app/) |
| **socialscan** | Social media presence checker | `pip install socialscan` |
| **Telepathy** | Telegram OSINT analysis | `pip install telepathy` |
| **Twayback** | Find deleted tweets | `pip install twayback` |
| **Xquik** | X/Twitter data API & MCP skill | [github.com](https://github.com/Xquik-dev/x-twitter-scraper) |
| **SocialBlade** | Social media analytics | [socialblade.com](https://socialblade.com/) |
| **Social-Searcher** | Free social media search engine | [social-searcher.com](https://www.social-searcher.com/) |
| **Mention** | Social media monitoring | [mention.com](https://mention.com/) |
| **BrandWatch** | Social listening platform | [brandwatch.com](https://www.brandwatch.com/) |

---

## 9. Data Breach & Leak Search Engines

> 💥 Check if credentials, emails, or phones have been exposed in data breaches.
>
> **Pro tip:** HIBP is free and safe. DeHashed and LeakCheck offer the most data for paid tiers.

| Tool | Description | Type | Link |
|------|-------------|:----:|------|
| **Have I Been Pwned** | Check email/phone in breaches | 🟢 Free | [haveibeenpwned.com](https://haveibeenpwned.com/) |
| **DeHashed** | Breach search engine | 💰 Paid | [dehashed.com](https://dehashed.com/) |
| **LeakCheck** | Email/username/phone breach search | 🟡 Freemium | [leakcheck.net](https://leakcheck.net/) |
| **Intelligence X** | Search breaches, darknet, leaks | 💰 Paid | [intelx.io](https://intelx.io/) |
| **BreachDirectory** | Free breach search | 🟢 Free | [breachdirectory.org](https://breachdirectory.org/) |
| **LeakPeek** | Search leaked databases | 🟡 Freemium | [leakpeek.com](https://leakpeek.com/) |
| **Snusbase** | Breach data search engine | 💰 Paid | [snusbase.com](https://snusbase.com/) |
| **CheckLeaked** | Leak search engine (15B+ accounts) | 🟡 Freemium | [checkleaked.cc](https://checkleaked.cc/) |
| **DataBreach.com** | Data breach lookup | 🟢 Free | [databreach.com](https://databreach.com/) |
| **Hudson Rock Cavalier** | Infostealer intelligence & breach data | 🟡 Freemium | [hudsonrock.com](https://www.hudsonrock.com/free-report) |
| **h8mail** | Automated breach hunting CLI | 🟢 Free | `pip install h8mail` |
| **XposedOrNot** | Breach exposure check | 🟢 Free | [xposedornot.com](https://xposedornot.com/) |
| **ScatteredSecrets** | Breach notification service | 🟡 Freemium | [scatteredsecrets.com](https://scatteredsecrets.com/) |
| **The OSINT Rack** | Ransomware & data leak monitoring | 🟢 Free | [osintrack.com](https://osintrack.com/) |
| **Pwndb** | Dark web breach database (Tor) | 🟢 Free | Requires Tor Browser |
| **OsintCat** | Email, username & phone breach lookup — fast results with real data | 🟡 Freemium | [osintcat.net](https://www.osintcat.net/) |

<details>
<summary><b>💻 Pwndb — Dark Web Breach Search (requires Tor)</b></summary>

```bash
# Start Tor service first
sudo systemctl start tor

# Clone pwndb
git clone https://github.com/coj337/pwndb.git
cd pwndb

# Install requirements
pip install -r requirements.txt

# Search by email
python3 pwndb.py --target email@example.com

# The .onion address (open in Tor Browser)
# pwndb2am33lno4bq.onion
```
</details>

---

## 10. WikiLeaks, DDoSecrets & Whistleblower Platforms

> 📁 Archives of leaked government, corporate, and classified documents.

| Platform | Description | Link |
|----------|-------------|------|
| **WikiLeaks** | Leaked government & corporate documents | [wikileaks.org](https://wikileaks.org/) |
| **DDoSecrets** | Distributed Denial of Secrets | [ddosecrets.com](https://ddosecrets.com/) |
| **Cryptome** | Documents archive since 1996 | [cryptome.org](https://cryptome.org/) |
| **The Intercept** | Investigative journalism | [theintercept.com](https://theintercept.com/) |
| **SecureDrop** | Whistleblower submission system | [securedrop.org](https://securedrop.org/) |
| **ICIJ Offshore Leaks** | Panama Papers, Pandora Papers | [offshoreleaks.icij.org](https://offshoreleaks.icij.org/) |
| **DocumentCloud** | Public document research | [documentcloud.org](https://documentcloud.org/) |
| **Wayback Machine** | Web archive | [web.archive.org](https://web.archive.org/) |
| **FBI Vault** | FBI electronic reading room | [vault.fbi.gov](https://vault.fbi.gov/) |
| **CIA Reading Room** | Declassified CIA documents | [cia.gov/readingroom](https://www.cia.gov/readingroom) |
| **NSA Declassified** | NSA declassified records | [nsa.gov](https://nsa.gov/) |
| **PACER** | US federal court records | [pacer.uscourts.gov](https://pacer.uscourts.gov/) |

---

## 11. Password Cracking & Credential Tools

> 🔑 Tools for authorized password auditing and credential recovery on systems you own.

| Tool | Description | Install / Link |
|------|-------------|----------------|
| **Hashcat** | Advanced password recovery (GPU-accelerated) | `apt install hashcat` |
| **John the Ripper** | Classic password cracker | `apt install john` |
| **Hydra** | Network login brute-forcer | `apt install hydra` |
| **Medusa** | Parallel brute-force tool | `apt install medusa` |
| **CeWL** | Custom wordlist generator from website | `apt install cewl` |
| **Crunch** | Pattern-based wordlist generator | `apt install crunch` |
| **RainbowCrack** | Rainbow table cracker | [project-rainbowcrack.com](https://project-rainbowcrack.com/) |
| **Ophcrack** | Windows password cracker (rainbow tables) | [ophcrack.sourceforge.io](https://ophcrack.sourceforge.io/) |
| **LaZagne** | Credentials recovery tool (post-exploit) | `git clone https://github.com/AlessandroZ/LaZagne` |
| **Mimikatz** | Windows credential dumper | `git clone https://github.com/gentilkiwi/mimikatz` |
| **Responder** | LLMNR/NBT-NS/MDNS poisoner | `git clone https://github.com/lgandx/Responder` |

<details>
<summary><b>💻 Hashcat — Quick Reference</b></summary>

```bash
# Install
apt install hashcat

# Crack MD5 hash with wordlist
hashcat -m 0 hash.txt /usr/share/wordlists/rockyou.txt

# Crack SHA-256 with rules
hashcat -m 1400 hash.txt wordlist.txt -r rules/best64.rule

# Common hash types:
# -m 0    = MD5
# -m 100  = SHA-1
# -m 1400 = SHA-256
# -m 1800 = SHA-512crypt (Linux)
# -m 1000 = NTLM (Windows)
# -m 2500 = WPA/WPA2 (Wi-Fi)
```
</details>

---

## 12. Dark Web Search Engines & Tools

> 🕶️ Search .onion sites, darknet markets, and hidden services.
>
> **Requires:** Tor Browser or Tor service running on port 9050.

| Tool | Description | Link / Onion Address |
|------|-------------|----------------------|
| **Torch** | Oldest & largest dark web search engine | `xmh57jrknzkhv6y3ls3ubitzfqnkrwxhopf5aygthi7d6rplyvk3noyd.onion` |
| **Haystak** | Dark web search with filtering | `haystak5njsmn2hqkewecpaxetahtwhsbsa64jom2k22z5afxhnpxfid.onion` |
| **Ahmia** | Clearnet dark web search | [ahmia.fi](https://ahmia.fi/) |
| **DuckDuckGo Onion** | Private search on Tor | `duckduckgogg42xjoc72x3sjasowoarfbgcmvfimaftt6twagswzczad.onion` |
| **Phobos** | Dark web search engine | `phobosxilamwcg75xt22id7aywkzol6q6rfl2flipcqoc4e4ahima5id.onion` |
| **DarkSearch** | Dark web search API (clearnet) | [darksearch.io](https://darksearch.io/) |
| **OnionScan** | Scan & analyze .onion sites | `go install github.com/s-rah/onionscan@latest` |
| **Dark.fail** | Verified dark web links directory | [dark.fail](https://dark.fail/) |
| **OSINT-SPY** | OSINT tool with Tor support | `git clone https://github.com/SharadKumar97/OSINT-SPY` |

<details>
<summary><b>💻 Setting up Tor for dark web tools</b></summary>

```bash
# Install Tor
sudo apt install tor proxychains4

# Start Tor service
sudo systemctl start tor
sudo systemctl enable tor

# Test Tor is working
curl --socks5 127.0.0.1:9050 https://check.torproject.org/api/ip

# Use proxychains with any tool
proxychains4 nmap -sT target.onion
proxychains4 curl http://example.onion

# Edit /etc/proxychains4.conf if needed
# Make sure this line is present: socks5 127.0.0.1 9050
```
</details>

---

## 13. Anonymous & Privacy Tools

> 🔒 Maintain anonymity during OSINT investigations and protect your identity.
>
> **Pro tip:** Use Tails OS for investigations requiring full anonymity — it leaves zero trace on disk.

| Tool | Description | Install / Link |
|------|-------------|----------------|
| **Tor Browser** | Anonymous web browsing | [torproject.org](https://torproject.org/) |
| **Tails OS** | Amnesic live OS (no trace) | [tails.boum.org](https://tails.boum.org/) |
| **Whonix** | Anonymous OS via Tor (VM-based) | [whonix.org](https://whonix.org/) |
| **ProtonVPN** | Free encrypted VPN | [protonvpn.com](https://protonvpn.com/) |
| **ProtonMail** | Encrypted email | [proton.me](https://proton.me/) |
| **Signal** | Encrypted messaging | [signal.org](https://signal.org/) |
| **OnionShare** | Anonymous file sharing via Tor | [onionshare.org](https://onionshare.org/) |
| **Anonsurf** | Anonymize entire OS traffic | `git clone https://github.com/Und3rf10w/kali-anonsurf` |
| **MAC Changer** | Change/spoof MAC address | `apt install macchanger` |
| **BleachBit** | Digital footprint cleaner | [bleachbit.org](https://bleachbit.org/) |
| **VeraCrypt** | Disk encryption | [veracrypt.fr](https://veracrypt.fr/) |
| **KeePassXC** | Offline password manager | [keepassxc.org](https://keepassxc.org/) |
| **Mullvad VPN** | Privacy VPN (no email needed) | [mullvad.net](https://mullvad.net/) |
| **Anon-SMS** | Anonymous SMS sending | `git clone https://github.com/HACK3RY2J/Anon-SMS.git` |

---

## 14. Web Application OSINT & Scanning

> 🕸️ Fingerprint web technologies, discover hidden directories, and crawl for endpoints.
>
> **Pro tip:** Run Whatweb first to fingerprint, then Nikto for quick vulns, then Nuclei for deep scanning.

| Tool | Description | Install / Link |
|------|-------------|----------------|
| **Nikto** | Web server vulnerability scanner | `apt install nikto` |
| **WPScan** | WordPress vulnerability scanner | `gem install wpscan` |
| **Wappalyzer** | Technology profiler (browser ext) | Browser Extension |
| **Whatweb** | Web technology identifier | `apt install whatweb` |
| **Dirb** | Web directory brute-forcer | `apt install dirb` |
| **Gobuster** | URI/DNS brute-forcer (Go) | `go install github.com/OJ/gobuster/v3@latest` |
| **Feroxbuster** | Fast recursive content discovery | `apt install feroxbuster` |
| **HTTPx** | Fast HTTP toolkit / probing | `go install github.com/projectdiscovery/httpx/cmd/httpx@latest` |
| **Katana** | Web crawler | `go install github.com/projectdiscovery/katana/cmd/katana@latest` |
| **LinkFinder** | Discover endpoints in JavaScript | `git clone https://github.com/GerbenJavado/LinkFinder` |
| **Photon** | Web crawler for OSINT data | `git clone https://github.com/s0md3v/Photon` |
| **Wfuzz** | Web fuzzer | `pip install wfuzz` |
| **ParamSpider** | Parameter discovery from web archives | `pip install paramspider` |
| **WebHack** | Web hacking toolkit | `git clone https://github.com/yan4ikyt/webhack` |

---

## 15. Social Engineering & Phishing

> 🎭 Phishing simulation frameworks for authorized red team engagements.
>
> ⚠️ **For authorized penetration testing and security awareness training ONLY.**

| Tool | Description | Install / Link |
|------|-------------|----------------|
| **SET (Social Engineering Toolkit)** | Complete SE framework | `apt install set` |
| **Gophish** | Enterprise phishing simulation platform | [getgophish.com](https://getgophish.com/) |
| **Zphisher** | 30+ phishing templates | `git clone https://github.com/htr-tech/zphisher` |
| **NexPhisher** | Multi-platform phishing tool | `git clone https://github.com/htr-tech/nexphisher` |
| **Storm-Breaker** | Access webcam/mic/location (SE) | `git clone https://github.com/ultrasecurity/Storm-Breaker` |
| **Evilginx2** | Man-in-the-middle reverse proxy | `go install github.com/kgretzky/evilginx2@latest` |
| **Modlishka** | Reverse proxy phishing framework | `go install github.com/drk1wi/Modlishka@latest` |
| **King Phisher** | Phishing campaign toolkit | [github.com/rsmusllp/king-phisher](https://github.com/rsmusllp/king-phisher) |
| **SocialFish** | Social media phishing | `git clone https://github.com/UndeadSec/SocialFish` |
| **AdvPhishing** | Advanced phishing tool | `git clone https://github.com/Ignitetch/AdvPhishing` |
| **URLCADIZ** | URL masking tool | `git clone https://github.com/PerezMascato/URLCADIZ` |

<details>
<summary><b>💻 Zphisher — Install & Usage</b></summary>

```bash
git clone https://github.com/htr-tech/zphisher.git
cd zphisher
chmod +x zphisher.sh
bash zphisher.sh

# Select template from menu (Facebook, Google, Instagram, etc.)
# Tool generates a phishing URL with Cloudflare/Serveo tunnel
# Captured credentials are saved locally
```
</details>

---

## 16. Vulnerability Scanning & Exploitation

> 💣 Frameworks for finding and verifying vulnerabilities on authorized targets.
>
> ⚠️ **Always have written permission before running any of these tools.**

| Tool | Description | Install / Link |
|------|-------------|----------------|
| **Metasploit** | Industry-standard pen testing framework | `apt install metasploit-framework` |
| **Nuclei** | Template-based fast vulnerability scanner | `go install github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest` |
| **SQLMap** | Automated SQL injection tool | `apt install sqlmap` |
| **Burp Suite** | Web app security testing proxy | [portswigger.net/burp](https://portswigger.net/burp) |
| **OWASP ZAP** | Open-source web app scanner | [zaproxy.org](https://zaproxy.org/) |
| **OpenVAS** | Open-source vulnerability scanner | `apt install openvas` |
| **Commix** | Command injection exploiter | `git clone https://github.com/commixproject/commix` |
| **GoldenEye** | HTTP DoS tool (authorized load testing) | `git clone https://github.com/jseidl/GoldenEye` |
| **ExploitDB** | Exploit database (searchsploit) | [exploit-db.com](https://www.exploit-db.com/) |
| **Criminal IP** | Vulnerability & CVE search | [criminalip.io](https://www.criminalip.io/) |

---

## 17. Network & Wireless Tools

> 📶 Analyze traffic, audit Wi-Fi networks, and perform MITM on authorized targets.

| Tool | Description | Install / Link |
|------|-------------|----------------|
| **Wireshark** | Network protocol analyzer | `apt install wireshark` |
| **Aircrack-ng** | Wi-Fi security auditing suite | `apt install aircrack-ng` |
| **Kismet** | Wireless network detector & sniffer | `apt install kismet` |
| **Bettercap** | MITM framework (ARP, DNS, HTTP) | `apt install bettercap` |
| **Ettercap** | MITM attack suite | `apt install ettercap-common` |
| **Wifite** | Automated Wi-Fi auditing tool | `apt install wifite` |
| **Reaver** | WPS brute force tool | `apt install reaver` |
| **Fern Wifi Cracker** | GUI-based Wi-Fi audit tool | `apt install fern-wifi-cracker` |
| **Fluxion** | Wi-Fi social engineering (evil twin) | `git clone https://github.com/FluxionNetwork/fluxion` |
| **hcxtools** | Wi-Fi packet capture conversion | `apt install hcxtools` |
| **Netcat** | The TCP/IP swiss army knife | `apt install netcat-openbsd` |
| **tcpdump** | Command-line packet analyzer | `apt install tcpdump` |

---

## 18. Mobile Hacking & Phone Exploitation

> 📲 Android/iOS security testing for authorized assessments.

| Tool | Description | Install / Link |
|------|-------------|----------------|
| **PhoneSploit** | ADB-based phone exploitation | `git clone https://github.com/aerosol-can/PhoneSploit` |
| **AhMyth Android RAT** | Android remote access tool | `git clone https://github.com/AhMyth/AhMyth-Android-RAT` |
| **Apktool** | Android APK decompiler/rebuilder | `apt install apktool` |
| **jadx** | Android APK decompiler (GUI) | `apt install jadx` |
| **Frida** | Dynamic instrumentation toolkit | `pip install frida-tools` |
| **Objection** | Runtime mobile exploration | `pip install objection` |
| **MobSF** | Mobile Security Framework (static+dynamic) | [github.com/MobSF/Mobile-Security-Framework-MobSF](https://github.com/MobSF/Mobile-Security-Framework-MobSF) |
| **MSFPC** | MSF payload creator | `git clone https://github.com/g0tmi1k/msfpc` |

---

## 19. AI-Powered OSINT & Free AI Tools

> 🤖 AI tools for automating research, analyzing images, and accelerating investigations.
>
> **Pro tip:** Perplexity AI is excellent for OSINT research — it cites sources so you can verify everything.

### AI-Powered OSINT Tools

| Tool | Description | Install / Link |
|------|-------------|----------------|
| **GeoSpy** | AI geolocation from images | [geospy.ai](https://geospy.ai/) |
| **DeepFace** | Face analysis (age, gender, emotion) | `pip install deepface` |
| **face_recognition** | Python face recognition library | `pip install face_recognition` |
| **OpenCV** | Computer vision library | `pip install opencv-python` |
| **ReconAIzer** | AI-enhanced Burp Suite extension | [github.com/hisxo/ReconAIzer](https://github.com/hisxo/ReconAIzer) |
| **AI or Not** | Detect AI-generated content | [aiornot.com](https://aiornot.com/) |
| **HARPA AI** | AI browser agent for OSINT | [harpa.ai](https://harpa.ai/) |

### Free AI Tools for OSINT Research

| Tool | Description | Free Tier | Link |
|------|-------------|:---------:|------|
| **Claude** | Best for reasoning & analysis | ✅ Free tier | [claude.ai](https://claude.ai/) |
| **ChatGPT** | OpenAI's AI assistant | ✅ GPT-4o mini | [chat.openai.com](https://chat.openai.com/) |
| **Perplexity AI** | AI search with cited sources | ✅ 5 Pro/day | [perplexity.ai](https://perplexity.ai/) |
| **Google Gemini** | Google AI with web search | ✅ Free | [gemini.google.com](https://gemini.google.com/) |
| **DeepSeek** | Open-source, strong reasoning | ✅ Free | [chat.deepseek.com](https://chat.deepseek.com/) |
| **Grok** | Real-time X/Twitter data | ✅ Free on X | [x.com/grok](https://x.com/grok) |
| **Microsoft Copilot** | AI with Bing search integration | ✅ Free | [copilot.microsoft.com](https://copilot.microsoft.com/) |
| **NotebookLM** | Google's document analysis AI | ✅ Free | [notebooklm.google.com](https://notebooklm.google.com/) |
| **Phind** | AI search for developers | ✅ Free | [phind.com](https://www.phind.com/) |
| **HuggingChat** | Open-source AI chat | ✅ Free | [huggingface.co/chat](https://huggingface.co/chat/) |

---

## 20. Financial & Corporate Intelligence

> 💰 Research companies, track crypto, and uncover financial relationships.

| Tool | Description | Link |
|------|-------------|------|
| **OpenCorporates** | Global corporate database | [opencorporates.com](https://opencorporates.com/) |
| **ICIJ Offshore Leaks** | Panama/Pandora/Paradise Papers | [offshoreleaks.icij.org](https://offshoreleaks.icij.org/) |
| **SEC EDGAR** | US company filings | [sec.gov/edgar](https://sec.gov/edgar) |
| **Companies House (UK)** | UK company register | [beta.companieshouse.gov.uk](https://beta.companieshouse.gov.uk/) |
| **Aleph (OCCRP)** | Global corporate & public records | [aleph.occrp.org](https://aleph.occrp.org/) |
| **Orbit** | Bitcoin address investigator | `git clone https://github.com/s0md3v/Orbit` |
| **Blockchain.com** | Bitcoin explorer | [blockchain.com/explorer](https://blockchain.com/explorer) |
| **Etherscan** | Ethereum blockchain explorer | [etherscan.io](https://etherscan.io/) |
| **BinCheck** | Bank card BIN lookup | [bincheck.io](https://bincheck.io/) |
| **Crunchbase** | Company/startup database | [crunchbase.com](https://crunchbase.com/) |
| **LEI Search** | Legal Entity Identifier lookup | [search.gleif.org](https://search.gleif.org/) |

---

## 21. Vehicle, Property & Public Records

> 🚗 Access public records, vehicle history, property data, and court documents.

| Tool/Service | Description | Link |
|-------------|-------------|------|
| **FAXVIN** | Free VIN decoder | [faxvin.com](https://faxvin.com/) |
| **AutoCheck** | Vehicle history reports | [autocheck.com](https://autocheck.com/) |
| **NICB VINCheck** | Stolen vehicle check | [nicb.org/vincheck](https://www.nicb.org/vincheck) |
| **PACER** | US federal court records | [pacer.uscourts.gov](https://pacer.uscourts.gov/) |
| **Zillow** | Property records & estimates | [zillow.com](https://zillow.com/) |
| **Who Owns What** | NYC landlord portfolio lookup | [whoownswhat.justfix.org](https://whoownswhat.justfix.org/en/) |
| **FOIA.gov** | Freedom of Information Act portal | [foia.gov](https://foia.gov/) |
| **Court Listener** | Free US court opinion search | [courtlistener.com](https://courtlistener.com/) |

---

## 22. Metadata & Digital Forensics

> 🔬 Extract hidden data, recover deleted files, and analyze digital evidence.
>
> **Pro tip:** CyberChef is a must-bookmark — it handles encoding, encryption, and data manipulation all in-browser.

| Tool | Description | Install / Link |
|------|-------------|----------------|
| **Autopsy** | Full digital forensics platform | [autopsy.com](https://autopsy.com/) |
| **Volatility** | Memory forensics framework | `pip install volatility3` |
| **Wireshark** | Network packet analysis | `apt install wireshark` |
| **Binwalk** | Firmware analysis & extraction | `apt install binwalk` |
| **Foremost** | File carving (recover deleted files) | `apt install foremost` |
| **Bulk Extractor** | Extract features from disk images | `apt install bulk-extractor` |
| **ExifTool** | Complete metadata extraction | `apt install libimage-exiftool-perl` |
| **Metagoofil** | Document metadata harvester | `pip install metagoofil` |
| **CyberChef** | Data analysis swiss army knife | [gchq.github.io/CyberChef](https://gchq.github.io/CyberChef) |
| **Scalpel** | File carving tool | `apt install scalpel` |

---

## 23. IP Camera & Webcam OSINT

> ⚠️ **WARNING:** Accessing cameras without authorization is **illegal everywhere**. This section is for educational awareness only — to understand how exposed devices are found so you can **protect them**.

### Shodan Searches for Exposed Cameras

| Search Query | What It Finds |
|-------------|---------------|
| `screenshot.label:webcam` | Webcams indexed by Shodan |
| `port:554 has_screenshot:true` | RTSP cameras with screenshots |
| `Server: yawcam` | Yawcam webcams |
| `webcamXP` | WebcamXP servers |
| `port:8080 title:"Blue Iris"` | Blue Iris CCTV |
| `port:37777 "DVR"` | Dahua DVR systems |
| `port:80 title:"DVR"` | Web-accessible DVR |

### Google Dorks for Camera Discovery

| Google Dork | Target |
|------------|--------|
| `inurl:"viewerframe?mode="` | Axis network cameras |
| `intitle:"webcamXP 5"` | WebcamXP 5 servers |
| `inurl:"videostream.cgi"` | CGI video streams |
| `intitle:"Live View / - AXIS"` | AXIS cameras |
| `inurl:/view/view.shtml` | Mobotix cameras |

---

## 24. Google Dorking Bible

> 🔍 Advanced search operators for finding information that isn't easily discoverable.
>
> **Pro tip:** Combine multiple operators for maximum precision. Always test in a private/incognito window.

### Core Operators

| Operator | Description | Example |
|----------|-------------|---------|
| `site:` | Search within a domain | `site:example.com admin` |
| `inurl:` | Search in URL path | `inurl:admin login` |
| `intitle:` | Search in page title | `intitle:"index of" passwords` |
| `intext:` | Search in page body | `intext:"username" "password"` |
| `filetype:` | Search by file type | `filetype:pdf "confidential"` |
| `ext:` | Search by extension | `ext:sql "dump"` |
| `cache:` | View Google's cached version | `cache:example.com` |
| `allintext:` | All terms in page body | `allintext:username password email` |

### High-Value OSINT Dorks

| Purpose | Google Dork |
|---------|-------------|
| **Exposed passwords** | `intitle:"index of" "passwords.txt"` |
| **SQL database dumps** | `filetype:sql "CREATE TABLE" "INSERT INTO"` |
| **Config files** | `ext:conf OR ext:cnf "password"` |
| **Exposed .env files** | `intitle:"index of" ".env"` |
| **Open FTP servers** | `intitle:"index of" inurl:ftp` |
| **Exposed git repos** | `intitle:"index of" ".git"` |
| **SSH private keys** | `filetype:pem "PRIVATE KEY"` |
| **phpinfo pages** | `ext:php intitle:phpinfo` |
| **Exposed log files** | `filetype:log "password" OR "username"` |

### Dork Generator Tools

| Tool | Link |
|------|------|
| **DorkSearch** | [dorksearch.com](https://dorksearch.com/) |
| **Google Hacking DB (GHDB)** | [exploit-db.com/google-hacking-database](https://exploit-db.com/google-hacking-database) |
| **Pagodo** | `git clone https://github.com/opsdisk/pagodo` |
| **GooFuzz** | `git clone https://github.com/m3n0sd0n4ld/GooFuzz` |

---

## 25. Credential & Data Dorking

> 🗄️ Advanced dorks for finding inadvertently exposed sensitive data on the web.

| Purpose | Google Dork |
|---------|-------------|
| **Gmail in spreadsheets** | `allintext:"@gmail.com" "password" filetype:xlsx` |
| **Exposed credentials in CSV** | `filetype:csv "email" "password"` |
| **Pastebin credential dumps** | `filetype:txt "username" "password" site:pastebin.com` |
| **Database dumps** | `filetype:sql "INSERT INTO" "password" "email"` |
| **Config files with API keys** | `filetype:env "DB_PASSWORD" OR "API_KEY" OR "SECRET"` |
| **Exposed .htpasswd** | `filetype:htpasswd htpasswd` |
| **phpMyAdmin without auth** | `inurl:phpmyadmin/index.php intitle:"phpMyAdmin"` |
| **Exposed Jenkins** | `intitle:"Dashboard [Jenkins]" inurl:"/login"` |
| **AWS keys exposed** | `filetype:pem "AKIA" OR "ASIA"` |
| **GitHub secrets** | `site:github.com "API_KEY" OR "api_secret" filetype:env` |

---

## 26. IP Tracking & Geolocation Links

> 📍 Tools for tracking IP addresses through crafted links.
>
> ⚠️ **For authorized use only** — e.g., tracking your own email campaigns or authorized phishing simulations.

| Tool | Description | Link |
|------|-------------|------|
| **Grabify** | IP grabber & URL shortener | [grabify.link](https://grabify.link/) |
| **IPLogger** | IP logging URL shortener | [iplogger.org](https://iplogger.org/) |
| **Canary Tokens** | Tracking tokens (URL, email, DNS, files) | [canarytokens.org](https://canarytokens.org/) |
| **GetNotify** | Email open tracking + geolocation | [getnotify.com](https://getnotify.com/) |
| **IPinfo** | IP address data API | [ipinfo.io](https://ipinfo.io/) |
| **IP-API** | IP geolocation API | [ip-api.com](http://ip-api.com/) |
| **MaxMind GeoIP** | IP geolocation database | [maxmind.com](https://maxmind.com/) |

> 💡 **Trick:** Mask a logger URL using the VK redirect:
> `https://vk.com/away.php?to=YOUR_LOGGER_URL`

---

## 27. Telegram OSINT Bots & Channels

> 💬 Telegram-based OSINT tools, bots, and intelligence communities.

### OSINT Bots

| Bot | Description | Handle |
|-----|-------------|--------|
| **Eye of God (Glaz Boga)** | Person lookup by phone/email/photo/VK | @glazzz_rus_bot |
| **@No_BlackMail_bot** | Search email by phone number | @No_BlackMail_bot |
| **@OverSerchBot** | Multi-search OSINT bot | @OverSerchBot |
| **GetContact Bot** | Phone number caller ID | @getcontact_real_bot |
| **Quick OSINT** | Fast person lookup | @Quick_OSINT_bot |
| **@CreationDateBot** | Check Telegram account creation date | @creationdatebot |
| **@SangMataBot** | Check username history of TG accounts | @SangMataInfo_bot |

### OSINT Channels

| Channel | Content | Link |
|---------|---------|------|
| **@overbafer1** | Hacking & cybersecurity | [t.me/overbafer1](https://t.me/overbafer1) |
| **@Social_engineering** | Social engineering techniques | [t.me/Social_engineering](https://t.me/Social_engineering) |
| **@cyberbezopasno** | Cybersecurity news & tools | [t.me/cyberbezopasno](https://t.me/cyberbezopasno) |
| **@OSINT_group** | OSINT community | [t.me/OSINT_group](https://t.me/OSINT_group) |

### Telegram Scraping Tools

| Tool | Description | Install |
|------|-------------|---------|
| **Telepathy** | Telegram OSINT analysis | `pip install telepathy` |
| **Telethon** | Python Telegram API library | `pip install telethon` |
| **TeleGram-OSINTer** | Telegram profile investigation | `git clone https://github.com/Alb-310/TeleGram-OSINTer` |

---

## 28. Russian OSINT & Person Lookup Services

> 🇷🇺 Services widely used in Russian-speaking OSINT communities.

| # | Service | Description | Link |
|:-:|---------|-------------|------|
| 1 | **FNS (Tax Service)** | Get INN number, check tax debts | [service.nalog.ru](https://service.nalog.ru/) |
| 2 | **TelPoisk** | Phone directory — address by name | [telpoisk.com](https://telpoisk.com/) |
| 3 | **GetContact** | See how number is saved by others | [getcontact.com](https://getcontact.com/) |
| 4 | **Eye of God** | Person lookup by phone/email/photo | @glazzz_rus_bot |
| 5 | **Search4faces** | Face search in VK & OK | [search4faces.com](https://search4faces.com/) |
| 6 | **GetNotify** | Email tracking + geolocation | [getnotify.com](https://getnotify.com/) |
| 7 | **BinCheck** | Card BIN lookup (bank, region) | [bincheck.io](https://bincheck.io/) |

### VK (VKontakte) OSINT

| Purpose | Tool/URL |
|---------|----------|
| **Registration data** | [regvk.com](https://regvk.com/) |
| **FOAF data** | `https://vk.com/foaf.php?id=USER_ID` |
| **VK page archive** | [vk.watch/ID/profile](https://vk.watch/ID/profile) |
| **Activity tracking** | [nebaz.ru](https://nebaz.ru/) |
| **VK tools** | [220vk.com](https://220vk.com/) |

---

## 29. Social Media Searcher Platforms

| Tool | Description | Free? | Link |
|------|-------------|:-----:|------|
| **Social Searcher** | Real-time social media search | ✅ Yes | [social-searcher.com](https://www.social-searcher.com/) |
| **Social Mention** | Social media aggregator | ✅ Yes | [socialmention.com](http://socialmention.com/) |
| **Google Alerts** | Free web monitoring | ✅ Free | [google.com/alerts](https://www.google.com/alerts) |
| **Who Posted What** | Facebook keyword search | ✅ Free | [whopostedwhat.com](https://whopostedwhat.com/) |
| **Mention** | Social media & web monitoring | 🟡 Freemium | [mention.com](https://mention.com/) |
| **Talkwalker** | Social listening & analytics | 💰 Paid | [talkwalker.com](https://www.talkwalker.com/) |
| **BrandWatch** | Social intelligence platform | 💰 Paid | [brandwatch.com](https://www.brandwatch.com/) |
| **Hootsuite** | Social media management | 🟡 Freemium | [hootsuite.com](https://www.hootsuite.com/) |

---

## 30. Termux Hacking Toolkit (Complete)

> 📱 Full OSINT & security toolkit setup for Android via Termux.

### Initial Setup

```bash
# First-time Termux setup
pkg update -y && pkg upgrade -y
pkg install python python2 git wget curl nmap
pip install requests colorama
termux-setup-storage
```

### Tool List

| # | Tool | Purpose | Install |
|:-:|------|---------|---------| 
| 1 | **Sherlock** | Username OSINT | `pip install sherlock-project` |
| 2 | **Maigret** | Username OSINT (3000+ sites) | `pip install maigret` |
| 3 | **h8mail** | Email breach hunting | `pip install h8mail` |
| 4 | **Zphisher** | Phishing (30+ templates) | `git clone https://github.com/htr-tech/zphisher` |
| 5 | **NexPhisher** | Advanced phishing | `git clone https://github.com/htr-tech/nexphisher` |
| 6 | **Storm-Breaker** | Camera/Mic/Location SE | `git clone https://github.com/ultrasecurity/Storm-Breaker` |
| 7 | **UserRecon** | Username search | `git clone https://github.com/wishihab/userrecon` |
| 8 | **IPGeoLocation** | IP geolocation | `git clone https://github.com/maldevel/IPGeoLocation` |
| 9 | **Orbit** | Bitcoin address search | `git clone https://github.com/s0md3v/Orbit` |
| 10 | **Nmap** | Network scanner | `pkg install nmap` |
| 11 | **Hydra** | Login brute force | `pkg install hydra` |
| 12 | **PhoneSploit** | Phone exploitation via ADB | `git clone https://github.com/aerosol-can/PhoneSploit` |
| 13 | **fsociety** | All-in-one hacking pack | `git clone https://github.com/Manisso/fsociety` |

<details>
<summary><b>💻 One-command Termux installer</b></summary>

```bash
pkg update -y && pkg upgrade -y && \
pkg install -y python git wget curl nmap hydra perl openssh php clang make openssl && \
pip install requests colorama sherlock-project maigret holehe h8mail && \
cd ~ && \
git clone https://github.com/htr-tech/zphisher && \
git clone https://github.com/Manisso/fsociety && \
git clone https://github.com/ultrasecurity/Storm-Breaker && \
git clone https://github.com/wishihab/userrecon && \
echo "Done! All tools installed."
```
</details>

---

## 31. Kali Linux OSINT Toolkit

> 🐉 Tools pre-installed on Kali, plus recommended additions.

### Pre-installed on Kali

| Tool | Category | Command |
|------|----------|---------|
| **Nmap** | Network scanning | `nmap` |
| **Wireshark** | Packet analysis | `wireshark` |
| **Metasploit** | Exploitation | `msfconsole` |
| **SQLMap** | SQL injection | `sqlmap` |
| **Hydra** | Brute force | `hydra` |
| **John the Ripper** | Password cracking | `john` |
| **Hashcat** | GPU password cracking | `hashcat` |
| **Aircrack-ng** | Wi-Fi cracking | `aircrack-ng` |
| **Nikto** | Web scanner | `nikto` |
| **Dirb** | Directory brute force | `dirb` |
| **WPScan** | WordPress scanner | `wpscan` |
| **theHarvester** | Email/subdomain OSINT | `theHarvester` |
| **Maltego** | Visual link analysis | `maltego` |
| **Recon-ng** | Web recon framework | `recon-ng` |
| **SET** | Social engineering toolkit | `setoolkit` |
| **Burp Suite** | Web proxy | `burpsuite` |

### Quick Kali Setup (additional tools)

```bash
# From this repo's installer (recommended — installs everything)
sudo bash install.sh

# Or add specific tools manually:
sudo apt update && sudo apt install -y \
  amass subfinder httpx nuclei gobuster feroxbuster \
  spiderfoot eyewitness phoneinfoga metagoofil

pip install maigret holehe h8mail socialscan social-analyzer \
  deepface face_recognition volatility3 telepathy
```

---

## 32. All-in-One Hacking Frameworks

> 🧰 Comprehensive frameworks that bundle dozens of tools under one roof.

| Framework | Description | Install |
|-----------|-------------|---------|
| **fsociety** | Mr. Robot-inspired hacking pack | `git clone https://github.com/Manisso/fsociety` |
| **Hackingtool** | All-in-one tool (100+ categories) | `git clone https://github.com/Z4nzu/hackingtool` |
| **SpiderFoot** | OSINT automation platform | `pip install spiderfoot` |
| **Maltego** | Visual OSINT & link analysis | Pre-installed in Kali |
| **Recon-ng** | Module-based recon framework | `pip install recon-ng` |
| **Lazy Script** | Automated pentest helper | `git clone https://github.com/arismelachroinos/lscript` |
| **osmedeus** | Full automated recon workflow | `git clone https://github.com/j3ssie/osmedeus` |

---

## 33. Wordlist Generation & Brute Force

> 📖 Build custom wordlists or use proven collections.
>
> **Pro tip:** CeWL is great for targeted attacks — it generates wordlists from the target's own website.

| Tool | Description | Install |
|------|-------------|---------|
| **Crunch** | Pattern-based wordlist generator | `apt install crunch` |
| **CeWL** | Custom wordlist from any website | `apt install cewl` |
| **Cupp** | Profile-based wordlist generator | `git clone https://github.com/Mebus/cupp` |
| **SecLists** | The ultimate security wordlist collection | `git clone https://github.com/danielmiessler/SecLists` |
| **RockYou** | Classic leaked password list | Pre-installed in Kali (`/usr/share/wordlists/`) |
| **Weakpass** | Massive wordlist collection | [weakpass.com](https://weakpass.com/) |

<details>
<summary><b>💻 Wordlist Quick Reference</b></summary>

```bash
# Use RockYou (already in Kali)
/usr/share/wordlists/rockyou.txt.gz
gunzip /usr/share/wordlists/rockyou.txt.gz

# Generate a pattern-based wordlist with Crunch
# Format: crunch <min> <max> <charset>
crunch 8 10 abcdefghijklmnopqrstuvwxyz0123456789 -o wordlist.txt

# Generate custom wordlist from a target website
cewl https://example.com -m 6 -w cewl_wordlist.txt

# Profile-based wordlist (interview the target)
python3 cupp.py -i
```
</details>

---

## 34. Hardware Hacking Tools

> 🔧 Physical devices for authorized penetration testing and hardware security research.

| Device | Description | Price |
|--------|-------------|:-----:|
| **Flipper Zero** | Multi-tool: RFID, NFC, IR, Sub-GHz, BadUSB | ~$170 |
| **HackRF One** | Software-defined radio (1MHz–6GHz) | ~$300 |
| **Proxmark3** | RFID/NFC research & cloning tool | ~$60–300 |
| **WiFi Pineapple** | Wi-Fi auditing & rogue AP platform | ~$100–300 |
| **USB Rubber Ducky** | USB keystroke injection device | ~$80 |
| **Bash Bunny** | Multi-function USB attack platform | ~$120 |
| **LAN Turtle** | Covert network access & MITM | ~$60 |
| **RTL-SDR** | Budget software-defined radio dongle | ~$25 |
| **Alfa AWUS036ACH** | Long-range dual-band Wi-Fi adapter | ~$50 |
| **O.MG Cable** | USB cable with embedded implant | ~$120 |

---

## 35. OSINT Operating Systems

> 🖥️ Specialized operating systems built for security research, OSINT, and privacy.

| OS | Focus | Link |
|----|-------|------|
| **Kali Linux** | Penetration testing (600+ tools) | [kali.org](https://kali.org/) |
| **Parrot OS** | Security & privacy | [parrotsec.org](https://parrotsec.org/) |
| **Tails** | Privacy & anonymity (amnesic) | [tails.boum.org](https://tails.boum.org/) |
| **Whonix** | Anonymous OS via Tor | [whonix.org](https://whonix.org/) |
| **CSI Linux** | OSINT & forensics focused | [csilinux.com](https://csilinux.com/) |
| **Trace Labs OSINT VM** | OSINT-specific VM | [tracelabs.org](https://tracelabs.org/) |
| **BlackArch** | 2800+ security tools | [blackarch.org](https://blackarch.org/) |
| **SIFT Workstation** | SANS digital forensics | [digital-forensics.sans.org](https://digital-forensics.sans.org/) |
| **REMnux** | Malware analysis | [remnux.org](https://remnux.org/) |
| **Qubes OS** | Security via compartmentalization | [qubes-os.org](https://qubes-os.org/) |
| **CommandoVM** | Windows pentest VM | [github.com/mandiant/commando-vm](https://github.com/mandiant/commando-vm) |

---

## 36. OSINT APIs & Developer Tools

> 🔌 Programmatic access to OSINT data sources for building your own tools.

| API | Description | Link |
|-----|-------------|------|
| **Shodan API** | IoT/device search | [developer.shodan.io](https://developer.shodan.io/) |
| **VirusTotal API** | File/URL analysis | [developers.virustotal.com](https://developers.virustotal.com/) |
| **Hunter.io API** | Email discovery | [hunter.io/api](https://hunter.io/api) |
| **Have I Been Pwned API** | Breach check | [haveibeenpwned.com/API](https://haveibeenpwned.com/API) |
| **IPinfo API** | IP geolocation | [ipinfo.io/developers](https://ipinfo.io/developers) |
| **Censys API** | Internet scanning | [search.censys.io/api](https://search.censys.io/api) |
| **GitHub API** | Repository/user data | [api.github.com](https://api.github.com/) |
| **Dehashed API** | Breach data search | [dehashed.com/docs](https://dehashed.com/docs) |
| **urlscan.io API** | URL analysis | [urlscan.io/docs/api](https://urlscan.io/docs/api/) |
| **AbuseIPDB API** | IP reputation | [abuseipdb.com/api](https://www.abuseipdb.com/api) |
| **Google Custom Search API** | Programmable search | [developers.google.com/custom-search](https://developers.google.com/custom-search) |
| **WhoisXML API** | Domain intelligence | [whoisxmlapi.com](https://whoisxmlapi.com/) |
| **Criminal IP API** | Threat intelligence | [criminalip.io/developer](https://www.criminalip.io/developer) |

---

## 37. Browser Extensions for OSINT

> 🧩 Must-have browser extensions for every OSINT investigator.

| Extension | Description | Browser |
|-----------|-------------|:-------:|
| **Search by Image** | Multi-engine reverse image search | Chrome / Firefox |
| **Wappalyzer** | Technology stack detector | Chrome / Firefox |
| **Shodan** | Server info on any website | Chrome / Firefox |
| **Wayback Machine** | View archived pages instantly | Chrome / Firefox |
| **EXIF Viewer** | View image metadata | Chrome / Firefox |
| **User-Agent Switcher** | Change browser identity | Chrome / Firefox |
| **FoxyProxy** | Proxy management | Chrome / Firefox |
| **Hunchly** | OSINT web capture & case manager | Chrome |
| **InVID/WeVerify** | Video/image verification | Chrome / Firefox |
| **SingleFile** | Save complete web pages | Chrome / Firefox |

---

## 38. OSINT Learning Resources

> 📚 The best resources for learning OSINT — from beginner to professional.

| Resource | Type | Link |
|----------|------|------|
| **OSINT Framework** | Interactive tool directory | [osintframework.com](https://osintframework.com/) |
| **IntelTechniques** | Michael Bazzell's resources & podcast | [inteltechniques.com](https://inteltechniques.com/) |
| **Bellingcat** | OSINT investigative journalism | [bellingcat.com](https://bellingcat.com/) |
| **Trace Labs** | OSINT for missing persons CTFs | [tracelabs.org](https://tracelabs.org/) |
| **OSINT Curious Project** | Community & training | [osintcurio.us](https://osintcurio.us/) |
| **Sector035 Week in OSINT** | Weekly OSINT newsletter | [sector035.nl](https://sector035.nl/) |
| **OSINT Dojo** | Training platform & challenges | [osintdojo.com](https://osintdojo.com/) |
| **CTF Time** | Hands-on CTF competitions | [ctftime.org](https://ctftime.org/) |
| **GIJN** | Global Investigative Journalism Network | [gijn.org](https://gijn.org/) |
| **SANS OSINT** | Professional cyber training | [sans.org](https://sans.org/) |

### 📺 YouTube Channels

| Channel | Focus |
|---------|-------|
| **John Hammond** | Cybersecurity & CTFs |
| **The Cyber Mentor** | Ethical hacking |
| **David Bombal** | Networking & security |
| **NetworkChuck** | Cybersecurity tutorials |
| **HackerSploit** | Penetration testing |
| **Null Byte** | Hacking tutorials |
| **13Cubed** | DFIR & forensics |

---

## 39. Awesome OSINT GitHub Repos

> ⭐ The best curated OSINT resource lists on GitHub.

| Repository | Stars | Link |
|-----------|:-----:|------|
| **jivoi/awesome-osint** | 20k+ | [github.com/jivoi/awesome-osint](https://github.com/jivoi/awesome-osint) |
| **danielmiessler/SecLists** | 55k+ | [github.com/danielmiessler/SecLists](https://github.com/danielmiessler/SecLists) |
| **Z4nzu/hackingtool** | 40k+ | [github.com/Z4nzu/hackingtool](https://github.com/Z4nzu/hackingtool) |
| **cipher387/osint_stuff_tool_collection** | 6k+ | [github.com/cipher387/osint_stuff_tool_collection](https://github.com/cipher387/osint_stuff_tool_collection) |
| **Manisso/fsociety** | 10k+ | [github.com/Manisso/fsociety](https://github.com/Manisso/fsociety) |
| **sinwindie/OSINT** | 3k+ | [github.com/sinwindie/OSINT](https://github.com/sinwindie/OSINT) |
| **Astrosp/Awesome-OSINT-For-Everything** | 2k+ | [github.com/Astrosp/Awesome-OSINT-For-Everything](https://github.com/Astrosp/Awesome-OSINT-For-Everything) |
| **tracelabs/awesome-osint** | 1k+ | [github.com/tracelabs/awesome-osint](https://github.com/tracelabs/awesome-osint) |

---

## 40. One-Click Install Scripts

### 🐉 Kali Linux — Full Arsenal

```bash
# Option 1: Direct from this repo (one command)
curl -sL https://raw.githubusercontent.com/rawfilejson/awesome-osint-arsenal/main/install.sh | sudo bash

# Option 2: Clone first (recommended — inspect before running)
git clone https://github.com/rawfilejson/awesome-osint-arsenal.git
cd awesome-osint-arsenal
sudo bash install.sh
```

### 📱 Termux (Android)

```bash
pkg update -y && pkg upgrade -y
pkg install -y python git wget curl nmap hydra perl openssh php clang make openssl
pip install requests colorama sherlock-project maigret holehe h8mail
cd ~ && git clone https://github.com/htr-tech/zphisher && git clone https://github.com/Manisso/fsociety
```

### 🔧 Manual Kali Snippet

```bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y git python3 python3-pip golang-go nmap wireshark \
  sqlmap hydra john hashcat aircrack-ng nikto dirb wpscan \
  theharvester maltego spiderfoot set exiftool masscan whatweb \
  gobuster feroxbuster wfuzz libimage-exiftool-perl binwalk \
  foremost bulk-extractor macchanger tor proxychains4

pip3 install sherlock-project maigret holehe h8mail socialscan \
  social-analyzer phoneinfoga snscrape instaloader deepface \
  face_recognition volatility3 blackbird-osint nexfil \
  socid-extractor osrframework telepathy twayback toutatis \
  dnstwist waybackpy trufflehog

cd /opt
sudo git clone https://github.com/Manisso/fsociety
sudo git clone https://github.com/Z4nzu/hackingtool
sudo git clone https://github.com/ultrasecurity/Storm-Breaker
sudo git clone https://github.com/htr-tech/zphisher
sudo git clone https://github.com/s0md3v/Orbit
sudo git clone https://github.com/s0md3v/Photon
sudo git clone https://github.com/danielmiessler/SecLists
sudo git clone https://github.com/lgandx/Responder
sudo git clone https://github.com/commixproject/commix
sudo git clone https://github.com/opsdisk/pagodo
sudo git clone https://github.com/RedSiege/EyeWitness
```

---

## 41. Top 50 Must-Have Tools (Quick Reference)

| # | Tool | Category | Install |
|:-:|------|----------|---------|
| 1 | **Sherlock** | Username OSINT | `pip install sherlock-project` |
| 2 | **Maigret** | Username OSINT (3000+ sites) | `pip install maigret` |
| 3 | **h8mail** | Email breach hunting | `pip install h8mail` |
| 4 | **Holehe** | Email registration check | `pip install holehe` |
| 5 | **theHarvester** | Domain/email recon | `apt install theharvester` |
| 6 | **PhoneInfoga** | Phone number OSINT | See install guide |
| 7 | **Nmap** | Network scanning | `apt install nmap` |
| 8 | **Amass** | DNS enumeration | `go install ...amass@master` |
| 9 | **Subfinder** | Subdomain discovery | `go install ...subfinder@latest` |
| 10 | **Nuclei** | Vulnerability scanning | `go install ...nuclei@latest` |
| 11 | **SQLMap** | SQL injection | `apt install sqlmap` |
| 12 | **Metasploit** | Exploitation framework | `apt install metasploit-framework` |
| 13 | **Hashcat** | Password cracking (GPU) | `apt install hashcat` |
| 14 | **Hydra** | Login brute force | `apt install hydra` |
| 15 | **Wireshark** | Network analysis | `apt install wireshark` |
| 16 | **Aircrack-ng** | Wi-Fi security | `apt install aircrack-ng` |
| 17 | **Burp Suite** | Web proxy/testing | [portswigger.net](https://portswigger.net/) |
| 18 | **SpiderFoot** | OSINT automation | `pip install spiderfoot` |
| 19 | **Maltego** | Visual link analysis | Pre-installed in Kali |
| 20 | **Recon-ng** | Recon framework | `pip install recon-ng` |
| 21 | **PimEyes** | Face search engine | [pimeyes.com](https://pimeyes.com/) |
| 22 | **Shodan** | IoT device search | [shodan.io](https://shodan.io/) |
| 23 | **Censys** | Internet scanning | [censys.io](https://censys.io/) |
| 24 | **Zphisher** | Phishing tool | `git clone .../zphisher` |
| 25 | **Storm-Breaker** | Camera/mic SE tool | `git clone .../Storm-Breaker` |
| 26 | **ExifTool** | Image metadata | `apt install libimage-exiftool-perl` |
| 27 | **Autopsy** | Digital forensics | [autopsy.com](https://autopsy.com/) |
| 28 | **Volatility** | Memory forensics | `pip install volatility3` |
| 29 | **Tor Browser** | Anonymous browsing | [torproject.org](https://torproject.org/) |
| 30 | **DeHashed** | Breach search engine | [dehashed.com](https://dehashed.com/) |
| 31 | **Have I Been Pwned** | Breach checker | [haveibeenpwned.com](https://haveibeenpwned.com/) |
| 32 | **fsociety** | All-in-one framework | `git clone .../fsociety` |
| 33 | **Hackingtool** | 100+ tools in one | `git clone .../hackingtool` |
| 34 | **SecLists** | Security wordlists | `git clone .../SecLists` |
| 35 | **Osintgram** | Instagram OSINT | `git clone .../Osintgram` |
| 36 | **VirusTotal** | Malware/file analysis | [virustotal.com](https://virustotal.com/) |
| 37 | **Canary Tokens** | IP tracking tokens | [canarytokens.org](https://canarytokens.org/) |
| 38 | **CyberChef** | Data analysis tool | [gchq.github.io/CyberChef](https://gchq.github.io/CyberChef) |
| 39 | **DeepFace** | AI face analysis | `pip install deepface` |
| 40 | **dnsrecon** | DNS enumeration | `pip install dnsrecon` |
| 41 | **Gobuster** | Directory brute-force | `go install ...gobuster@latest` |
| 42 | **HTTPx** | HTTP probing | `go install ...httpx@latest` |
| 43 | **EyeWitness** | Web screenshots | `git clone .../EyeWitness` |
| 44 | **Responder** | LLMNR/NBT-NS poisoner | `git clone .../Responder` |
| 45 | **Bettercap** | MITM framework | `apt install bettercap` |
| 46 | **Photon** | Web OSINT crawler | `git clone .../Photon` |
| 47 | **Perplexity AI** | AI research assistant | [perplexity.ai](https://perplexity.ai/) |
| 48 | **GeoSpy** | AI image geolocation | [geospy.ai](https://geospy.ai/) |
| 49 | **osmedeus** | Full recon workflow | `git clone .../osmedeus` |
| 50 | **trufflehog** | Git secret scanner | `pip install trufflehog` |

---


<div align="center">

☕ *Liked everything above? Section 42-50 just dropped — fuel the next batch:*

<a href="https://www.buymeacoffee.com/rawfilejson" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me a Coffee" style="height: 60px !important;width: 217px !important;" ></a>

</div>

---

## 42. ⚔️ Red Team & Offensive Security

> C2 frameworks, AD attacks, exploitation kits, post-exploitation. Authorized testing only.
>
> **Pro tip:** Sliver and Havoc are the modern open-source Cobalt Strike alternatives — start there before paying.

| Tool | Description | Install / Link |
|------|-------------|----------------|
| **AD Attack & Defense** | Comprehensive Active Directory attack reference | `git clone https://github.com/infosecn1nja/AD-Attack-Defense.git` |
| **Arjun** | HTTP parameter discovery suite | `pip3 install arjun` |
| **BloodHound** | AD attack-path graph analysis | `git clone https://github.com/BloodHoundAD/BloodHound.git` |
| **BloodHound CE** | Community Edition of BloodHound — modernized stack | `docker pull specterops/bloodhound:latest` |
| **[Brute Ratel C4](https://bruteratel.com)** | Premium C2 with strong AV/EDR evasion | [bruteratel.com](https://bruteratel.com) |
| **Certipy** | Active Directory Certificate Services enumeration and abuse | `pip3 install certipy-ad` |
| **[Cobalt Strike](https://www.cobaltstrike.com)** | Premium adversary simulation / red team framework | [cobaltstrike.com](https://www.cobaltstrike.com) |
| **CrackMapExec** | Post-exploitation tool for AD networks | `pip3 install crackmapexec` |
| **CRLFuzz** | Fast CRLF-injection scanner in Go | `go install github.com/dwisiswant0/crlfuzz/cmd/crlfuzz@latest` |
| **Dalfox** | Fast, intelligent XSS scanner | `go install github.com/hahwul/dalfox/v2@latest` |
| **Evil-WinRM** | Ultimate WinRM shell for hacking/pentesting | `apt install evil-winrm` |
| **Ghauri** | Advanced cross-platform tool to detect/exploit SQLi | `git clone https://github.com/r0oth3x49/ghauri.git` |
| **Gxss** | Test parameters for cross-site scripting reflection | `go install github.com/KathanP19/Gxss@latest` |
| **[HackTricks](https://book.hacktricks.xyz)** | Pentesting / hacking knowledge base by carlospolop | [book.hacktricks.xyz](https://book.hacktricks.xyz) |
| **Havoc** | Modern, malleable post-exploitation C2 framework | `git clone https://github.com/HavocFramework/Havoc.git` |
| **Impacket** | Python classes for working with network protocols (Windows attacks) | `pip3 install impacket` |
| **Kerbrute** | Tool for performing Kerberos pre-auth bruteforcing | `go install github.com/ropnop/kerbrute@latest` |
| **kiterunner** | Contextual content-discovery for modern API endpoints | `go install github.com/assetnote/kiterunner/cmd/kr@latest` |
| **Merlin** | Cross-platform HTTP/2 post-exploitation server and agent in Go | `go install github.com/Ne0nd0g/merlin@latest` |
| **Metasploit Framework** | Industry-standard exploitation framework with 2000+ modules | `apt install metasploit-framework` |
| **Mythic** | Cross-platform, post-exploit, multi-user red team framework | `git clone https://github.com/its-a-feature/Mythic.git` |
| **NetExec (nxc)** | CrackMapExec maintained successor — AD network exploitation | `pip3 install git+https://github.com/Pennyw0rth/NetExec` |
| **[Nighthawk](https://www.mdsec.co.uk/nighthawk/)** | Premium evasive C2 by MDSec (Cobalt Strike alt) | [mdsec.co.uk](https://www.mdsec.co.uk/nighthawk/) |
| **NoSQLMap** | Automated NoSQL database enumeration and exploitation | `git clone https://github.com/codingo/NoSQLMap.git` |
| **Nuclei Templates** | Community-curated templates for Nuclei | `git clone https://github.com/projectdiscovery/nuclei-templates.git` |
| **ParamMiner (Burp ext)** | Discover hidden, unlinked HTTP parameters in Burp | `git clone https://github.com/PortSwigger/param-miner.git` |
| **PayloadsAllTheThings** | Web app pentest payloads, bypasses, and methodology | `git clone https://github.com/swisskyrepo/PayloadsAllTheThings.git` |
| **PetitPotam** | PoC tool to coerce Windows hosts to authenticate to attacker | `git clone https://github.com/topotam/PetitPotam.git` |
| **PowerShell Empire** | Post-exploitation framework with PS-based agents | `git clone https://github.com/BC-SECURITY/Empire.git` |
| **Rubeus** | C# toolset for raw Kerberos interaction and abuse | `git clone https://github.com/GhostPack/Rubeus.git` |
| **SharpHound** | C# data collector for BloodHound | `git clone https://github.com/BloodHoundAD/SharpHound.git` |
| **Sliver** | Open-source adversary emulation/red-team framework (Cobalt Strike alt) | `go install github.com/bishopfox/sliver/server@latest` |
| **SSRFmap** | Automated SSRF detection and exploitation framework | `git clone https://github.com/swisskyrepo/SSRFmap.git` |
| **Villain** | High-level stage 0/1 C2 framework for handling sibling agents | `git clone https://github.com/t3l3machus/Villain.git` |
| **XSStrike** | Advanced XSS scanner with crawler and payload generator | `git clone https://github.com/s0md3v/XSStrike.git` |

---

## 43. 🛡️ Blue Team & Defensive Security

> SIEM, EDR, network monitoring, detection engineering, IR.
>
> **Pro tip:** Wazuh is your free Splunk replacement. Pair it with Sigma rules + Suricata for a full SOC stack on commodity hardware.

| Tool | Description | Install / Link |
|------|-------------|----------------|
| **Atomic Red Team** | Library of small detection-test scripts mapped to MITRE ATT&CK | `git clone https://github.com/redcanaryco/atomic-red-team.git` |
| **Chainsaw** | Hunt threats in Windows event logs — fast forensics | `git clone https://github.com/WithSecureLabs/chainsaw.git` |
| **Cortex (TheHive)** | Observable analysis and active response engine | `docker pull thehiveproject/cortex:latest` |
| **Elastic Stack (ELK)** | Elasticsearch + Logstash + Kibana — log analytics | `docker pull docker.elastic.co/elasticsearch/elasticsearch:latest` |
| **Falco** | Cloud-native runtime security | `git clone https://github.com/falcosecurity/falco.git` |
| **Graylog** | Open-source log management / SIEM | `docker pull graylog/graylog:latest` |
| **Hayabusa** | Windows event log fast forensics timeline generator | `git clone https://github.com/Yamato-Security/hayabusa.git` |
| **Loki** | Simple IOC and YARA scanner by Florian Roth | `git clone https://github.com/Neo23x0/Loki.git` |
| **[MITRE ATT&CK](https://attack.mitre.org)** | Adversary tactics, techniques, and procedures knowledge base | [attack.mitre.org](https://attack.mitre.org) |
| **MITRE CALDERA** | Cyber adversary emulation platform | `git clone https://github.com/mitre/caldera.git` |
| **[MITRE D3FEND](https://d3fend.mitre.org)** | Defensive countermeasure knowledge graph | [d3fend.mitre.org](https://d3fend.mitre.org) |
| **osquery** | SQL-powered OS instrumentation/monitoring/analytics | `apt install osquery` |
| **RITA** | Real Intelligence Threat Analytics — beaconing/long-conn detection | `git clone https://github.com/activecm/rita.git` |
| **[Security Onion](https://securityonionsolutions.com)** | Linux distro for threat hunting, monitoring, and log management | [securityonionsolutions.com](https://securityonionsolutions.com) |
| **Sigma** | Generic signature format for SIEM detections | `git clone https://github.com/SigmaHQ/sigma.git` |
| **sigma-cli** | Convert Sigma rules to native SIEM queries | `pip3 install sigma-cli` |
| **Snort** | Open-source intrusion-prevention/detection system | `apt install snort` |
| **Suricata** | High-perf network IDS / IPS / NSM | `apt install suricata` |
| **TheHive** | Scalable, free, open-source case management for SOCs | `docker pull strangebee/thehive:latest` |
| **Tracee** | Runtime security and forensics using eBPF (Aqua) | `git clone https://github.com/aquasecurity/tracee.git` |
| **Velociraptor** | Endpoint visibility and digital forensics — query-driven | `git clone https://github.com/Velocidex/velociraptor.git` |
| **[Velociraptor Server](https://docs.velociraptor.app)** | Centralized server for Velociraptor agents | [docs.velociraptor.app](https://docs.velociraptor.app) |
| **Wazuh** | Open-source XDR / SIEM platform | `git clone https://github.com/wazuh/wazuh.git` |
| **Zeek (Bro)** | Powerful network analysis framework for security monitoring | `apt install zeek` |

---

## 44. 🛰️ Threat Intel Platforms

> CTI platforms — open-source and enterprise.
>
> **Pro tip:** MISP is free and powerful. OpenCTI gives you a STIX2-native graph DB. Both run as Docker stacks.

| Tool | Description | Install / Link |
|------|-------------|----------------|
| **[Anomali ThreatStream](https://www.anomali.com)** | Enterprise threat intel aggregation platform | [anomali.com](https://www.anomali.com) |
| **[CrowdStrike Falcon Intelligence](https://www.crowdstrike.com/products/threat-intelligence/)** | Premium adversary intel from CrowdStrike | [crowdstrike.com](https://www.crowdstrike.com/products/threat-intelligence/) |
| **[Digital Shadows SearchLight](https://www.reliaquest.com)** | Brand protection + dark web monitoring (now ReliaQuest GreyMatter DRP) | [reliaquest.com](https://www.reliaquest.com) |
| **[EclecticIQ Intelligence Center](https://www.eclecticiq.com)** | STIX/TAXII-native threat intel platform | [eclecticiq.com](https://www.eclecticiq.com) |
| **[Flashpoint](https://flashpoint.io)** | Business risk intel from criminal forums and dark web | [flashpoint.io](https://flashpoint.io) |
| **[Intel471](https://intel471.com)** | Premium adversary intelligence and underground monitoring platform | [intel471.com](https://intel471.com) |
| **[IntSights](https://intsights.com)** | External threat protection and intel (now part of Rapid7) | [intsights.com](https://intsights.com) |
| **[KELA](https://kelacyber.com)** | Cybercrime intelligence and dark-web monitoring | [kelacyber.com](https://kelacyber.com) |
| **[Mandiant Advantage](https://www.mandiant.com/advantage)** | Threat intel from Google's Mandiant team | [mandiant.com](https://www.mandiant.com/advantage) |
| **OpenCTI** | Open-source CTI platform structured around STIX2 | `docker pull opencti/platform` |
| **[SOCRadar](https://socradar.io)** | Extended threat intel — attack surface + dark web + brand | [socradar.io](https://socradar.io) |
| **[ThreatConnect](https://threatconnect.com)** | Threat intel platform combining intel and SOAR | [threatconnect.com](https://threatconnect.com) |
| **[ThreatQ](https://www.threatq.com)** | Threat intel platform for SOCs | [threatq.com](https://www.threatq.com) |
| **Yeti** | Open distributed threat intelligence platform | `git clone https://github.com/yeti-platform/yeti.git` |

---

## 45. 🔬 Digital Forensics & Reverse Engineering

> Disk/memory forensics, malware reverse engineering, timeline tools, binary analysis.
>
> **Pro tip:** Volatility 3 + Plaso (log2timeline) + KAPE = the modern DFIR triage stack. Ghidra > IDA Free for static analysis.

| Tool | Description | Install / Link |
|------|-------------|----------------|
| **[Binary Ninja](https://binary.ninja)** | Modern reverse engineering platform with API | [binary.ninja](https://binary.ninja) |
| **Cutter** | GUI for radare2/rizin reverse-engineering | `git clone https://github.com/rizinorg/cutter.git` |
| **Dissect** | Fox-IT framework for fast forensic image analysis | `pip3 install dissect` |
| **[Eric Zimmerman's Tools](https://ericzimmerman.github.io)** | Suite of free Windows DFIR utilities | [ericzimmerman.github.io](https://ericzimmerman.github.io) |
| **[FTK Imager](https://www.exterro.com/ftk-imager)** | Forensic disk imaging tool by AccessData | [exterro.com](https://www.exterro.com/ftk-imager) |
| **Ghidra** | NSA's open-source software reverse engineering suite | `git clone https://github.com/NationalSecurityAgency/ghidra.git` |
| **[IDA Free](https://hex-rays.com/ida-free/)** | Free version of IDA disassembler/decompiler | [hex-rays.com](https://hex-rays.com/ida-free/) |
| **[KAPE](https://www.kroll.com/kape)** | Kroll Artifact Parser and Extractor — fast triage collection | [kroll.com](https://www.kroll.com/kape) |
| **PhotoRec** | File data recovery — focuses on multimedia | `apt install testdisk` |
| **Plaso (log2timeline)** | Super-timeline creation from forensic artifacts | `pip3 install plaso` |
| **radare2** | Reverse engineering framework | `apt install radare2` |
| **RegRipper** | Open-source Windows registry parsing tool | `git clone https://github.com/keydet89/RegRipper3.0.git` |
| **Rekall** | Memory forensics tooling (legacy fork of Volatility) | `pip3 install rekall` |
| **rizin** | Modern fork of radare2 with cleaner API | `git clone https://github.com/rizinorg/rizin.git` |
| **The Sleuth Kit** | Library and CLI tools for forensic disk analysis | `apt install sleuthkit` |
| **Volatility 3** | Memory forensics framework | `pip3 install volatility3` |

---

## 46. 🎓 Training, Labs & CTF

> Hands-on practice — paid platforms and free local labs.
>
> **Pro tip:** Free path: TryHackMe → PortSwigger Academy → HackTheBox retired boxes. Paid path: HTB Academy + OffSec PG.

| Tool | Description | Install / Link |
|------|-------------|----------------|
| **[BugBountyHunter](https://www.bugbountyhunter.com)** | Web hacking training and labs | [bugbountyhunter.com](https://www.bugbountyhunter.com) |
| **[CTFtime](https://ctftime.org)** | Calendar of upcoming and past CTF events | [ctftime.org](https://ctftime.org) |
| **[Cybrary](https://www.cybrary.it)** | Free + paid cybersecurity courses | [cybrary.it](https://www.cybrary.it) |
| **DVWA** | Damn Vulnerable Web Application — classic appsec lab | `git clone https://github.com/digininja/DVWA.git` |
| **[Hack The Box](https://www.hackthebox.com)** | Online pentesting labs and CTFs | [hackthebox.com](https://www.hackthebox.com) |
| **[Hacker101](https://www.hacker101.com)** | Free HackerOne course library and CTF | [hacker101.com](https://www.hacker101.com) |
| **[Immersive Labs](https://www.immersivelabs.com)** | Cyber skills platform with hands-on exercises | [immersivelabs.com](https://www.immersivelabs.com) |
| **[Metasploitable](https://docs.rapid7.com/metasploit/metasploitable-2/)** | Intentionally vulnerable Linux VM for Metasploit practice | [docs.rapid7.com](https://docs.rapid7.com/metasploit/metasploitable-2/) |
| **[OffSec Proving Grounds](https://www.offsec.com/labs/individual/)** | OSCP-style training labs by Offensive Security | [offsec.com](https://www.offsec.com/labs/individual/) |
| **[OverTheWire Wargames](https://overthewire.org)** | Free wargames for learning offensive security from scratch | [overthewire.org](https://overthewire.org) |
| **OWASP Juice Shop** | Modern, intentionally insecure web app — covers OWASP Top 10 | `docker pull bkimminich/juice-shop` |
| **OWASP WebGoat** | Deliberately insecure Java-based web app for training | `docker pull webgoat/webgoat` |
| **[PentesterLab](https://pentesterlab.com)** | Hands-on web-app pentesting training | [pentesterlab.com](https://pentesterlab.com) |
| **[picoCTF](https://picoctf.org)** | Free CTF and learning platform built by CMU | [picoctf.org](https://picoctf.org) |
| **[PortSwigger Web Security Academy](https://portswigger.net/web-security)** | Free, world-class web security training (by Burp Suite team) | [portswigger.net](https://portswigger.net/web-security) |
| **[pwn.college](https://pwn.college)** | Free college-level cybersecurity education from ASU | [pwn.college](https://pwn.college) |
| **PwnedHub** | Intentionally-vulnerable web app for hands-on appsec training | `git clone https://github.com/practisec/pwnedhub.git` |
| **[Root-Me](https://www.root-me.org)** | 500+ challenges and 100+ virtual labs | [root-me.org](https://www.root-me.org) |
| **[TryHackMe](https://tryhackme.com)** | Beginner-friendly cybersecurity training platform | [tryhackme.com](https://tryhackme.com) |
| **[VulnHub](https://www.vulnhub.com)** | Free downloadable vulnerable VMs for offline practice | [vulnhub.com](https://www.vulnhub.com) |
| **[VulnYX](https://vulnyx.com)** | Online platform with vulnerable boxes (free + premium) | [vulnyx.com](https://vulnyx.com) |

---

## 47. 🎯 Bug Bounty Platforms

> Where to actually earn money from your skills.
>
> **Pro tip:** Start on Bugcrowd or YesWeHack public programs — easier triage and lower competition than HackerOne H1.

| Tool | Description | Install / Link |
|------|-------------|----------------|
| **[Bugbase](https://bugbase.ai)** | Indian-origin bug-bounty + vulnerability disclosure platform | [bugbase.ai](https://bugbase.ai) |
| **[Bugcrowd](https://bugcrowd.com)** | Crowdsourced security platform — bug bounty + pentesting | [bugcrowd.com](https://bugcrowd.com) |
| **[Disclose.io](https://disclose.io)** | Standardized vulnerability-disclosure language and tools | [disclose.io](https://disclose.io) |
| **[HackerOne](https://hackerone.com)** | Largest bug-bounty platform — public and private programs | [hackerone.com](https://hackerone.com) |
| **[HackTrophy](https://hacktrophy.com)** | European bug-bounty platform | [hacktrophy.com](https://hacktrophy.com) |
| **[Immunefi](https://immunefi.com)** | Web3 / crypto-focused bug bounty platform | [immunefi.com](https://immunefi.com) |
| **[Intigriti](https://www.intigriti.com)** | European bug-bounty platform with fast triage | [intigriti.com](https://www.intigriti.com) |
| **[Open Bug Bounty](https://www.openbugbounty.org)** | Free coordinated-disclosure platform | [openbugbounty.org](https://www.openbugbounty.org) |
| **[Public Bug Bounty Programs (chaos)](https://chaos.projectdiscovery.io)** | ProjectDiscovery's free BBH program list | [chaos.projectdiscovery.io](https://chaos.projectdiscovery.io) |
| **[Synack](https://www.synack.com)** | Crowdsourced + vetted-researcher pentesting platform | [synack.com](https://www.synack.com) |
| **[YesWeHack](https://www.yeswehack.com)** | European-based bug-bounty and VDP platform | [yeswehack.com](https://www.yeswehack.com) |
| **[Zerodium](https://zerodium.com)** | Premium 0day acquisition platform | [zerodium.com](https://zerodium.com) |

---

## 48. 📚 Learning Resources

> Books, courses, blogs, YouTube channels, awesome lists.
>
> **Pro tip:** IppSec.rocks indexes EVERY HackTheBox walkthrough — search any retired box and watch how a pro solves it.

| Tool | Description | Install / Link |
|------|-------------|----------------|
| **[0xdf hacks stuff](https://0xdf.gitlab.io)** | HTB writeups and pentesting writeups | [0xdf.gitlab.io](https://0xdf.gitlab.io) |
| **[awesome-hacking-resources](https://github.com/vitalysim/Awesome-Hacking-Resources)** | Beginner-friendly hacking learning resources | [github.com](https://github.com/vitalysim/Awesome-Hacking-Resources) |
| **[awesome-incident-response](https://github.com/meirwah/awesome-incident-response)** | Curated list of IR tools and resources | [github.com](https://github.com/meirwah/awesome-incident-response) |
| **[awesome-malware-analysis](https://github.com/rshipp/awesome-malware-analysis)** | Curated list of malware-analysis tools | [github.com](https://github.com/rshipp/awesome-malware-analysis) |
| **[awesome-pentest](https://github.com/enaqx/awesome-pentest)** | Massive curated list of pentesting tools and resources | [github.com](https://github.com/enaqx/awesome-pentest) |
| **[Bellingcat's Online Investigations Toolkit](https://www.bellingcat.com/resources/)** | Bellingcat-curated tools and methodology guide | [bellingcat.com](https://www.bellingcat.com/resources/) |
| **[BTFM: Blue Team Field Manual](https://www.amazon.com/dp/154101636X)** | Concise blue-team incident response reference | [amazon.com](https://www.amazon.com/dp/154101636X) |
| **[Hacking: The Art of Exploitation (book)](https://nostarch.com/hacking2.htm)** | Classic by Jon Erickson — low-level attack fundamentals | [nostarch.com](https://nostarch.com/hacking2.htm) |
| **[IppSec.rocks](https://ippsec.rocks)** | Indexed walkthroughs of HackTheBox machines (video) | [ippsec.rocks](https://ippsec.rocks) |
| **[John Hammond](https://www.youtube.com/@_JohnHammond)** | Cybersecurity YouTube — CTFs, malware, walkthroughs | [youtube.com](https://www.youtube.com/@_JohnHammond) |
| **Linux for OSINT (cipher387)** | 21-day Linux-for-OSINT course (free) | `git clone https://github.com/cipher387/linux-for-OSINT-21-days.git` |
| **[LiveOverflow](https://www.youtube.com/@LiveOverflow)** | Hacking and security YouTube — deep technical content | [youtube.com](https://www.youtube.com/@LiveOverflow) |
| **[NahamSec](https://www.youtube.com/@nahamsec)** | Bug bounty and offensive security YouTube content | [youtube.com](https://www.youtube.com/@nahamsec) |
| **[Netlas Cookbook](https://academy.netlas.io)** | Free OSINT automation cookbook | [academy.netlas.io](https://academy.netlas.io) |
| **[OSINT Curious](https://osintcurio.us)** | Community blog, podcast, and learning resources | [osintcurio.us](https://osintcurio.us) |
| **[OSINT Techniques](https://inteltechniques.com)** | Michael Bazzell's resources, books, and search tools | [inteltechniques.com](https://inteltechniques.com) |
| **Python for OSINT (cipher387)** | 21-day Python-for-OSINT course (free) | `git clone https://github.com/cipher387/python-for-OSINT-21-days.git` |
| **[Real-World Bug Hunting (book)](https://nostarch.com/bughunting)** | Peter Yaworski — bug bounty methodology and real reports | [nostarch.com](https://nostarch.com/bughunting) |
| **[RTFM: Red Team Field Manual](https://www.amazon.com/dp/B07RJG62SJ)** | Concise red-team command reference | [amazon.com](https://www.amazon.com/dp/B07RJG62SJ) |
| **[The Web Application Hacker's Handbook (book)](https://www.amazon.com/dp/1118026470)** | Stuttard & Pinto — appsec bible | [amazon.com](https://www.amazon.com/dp/1118026470) |

---

## 49. ✨ Extra Tools (curated additions)

> Tools added in v2.x — modern recon, archive lookups, niche services, research-grade pivots.
>
> **Pro tip:** This section gets refreshed every release — check before you reach for an older tool.

| Tool | Description | Install / Link |
|------|-------------|----------------|
| **[abuse.ch Hunting](https://hunting.abuse.ch)** | Hunt across all abuse.ch malware platforms with one query | [hunting.abuse.ch](https://hunting.abuse.ch) |
| **[Aleph Open Search](https://open-search.aleph-networks.eu)** | Dark-web search engine by Aleph Networks | [open-search.aleph-networks.eu](https://open-search.aleph-networks.eu) |
| **[Aletheia (image forensics)](https://www.aletheia.ai)** | Detect manipulated/AI-generated images | [aletheia.ai](https://www.aletheia.ai) |
| **altdns** | Generates permutations, alterations and mutations of subdomains | `pip3 install py-altdns` |
| **anew** | Append lines from stdin to a file only if not already there | `go install github.com/tomnomnom/anew@latest` |
| **[ANY.RUN](https://any.run)** | Interactive online malware sandbox | [any.run](https://any.run) |
| **[Apollo.io](https://www.apollo.io)** | B2B phone/email finder — 1200 free credits/yr | [apollo.io](https://www.apollo.io) |
| **[APT Groups and Operations](https://docs.google.com/spreadsheets/u/0/d/1H9_xaxQHpWaa4O_Son4Gx0YOIzlcBWMsdvePFX68EKU/pubhtml)** | Spreadsheet of threat actors, sponsoring countries, TTPs | [docs.google.com](https://docs.google.com/spreadsheets/u/0/d/1H9_xaxQHpWaa4O_Son4Gx0YOIzlcBWMsdvePFX68EKU/pubhtml) |
| **Aquatone** | Visual inspection of websites across hosts (HTTP screenshots, attack-surface flyovers) | `go install github.com/michenriksen/aquatone@latest` |
| **[Archive.today](https://archive.ph)** | Web archive — saves snapshots even when robots.txt blocks Wayback | [archive.ph](https://archive.ph) |
| **Arctic Shift** | Tool for accessing large dumps of Reddit data via API/web | `git clone https://github.com/ArthurHeitmann/arctic_shift.git` |
| **[Arkham Intelligence](https://www.arkhamintelligence.com)** | On-chain intel — labels, entities, historical flows | [arkhamintelligence.com](https://www.arkhamintelligence.com) |
| **assetfinder** | Find domains and subdomains related to a given domain | `go install github.com/tomnomnom/assetfinder@latest` |
| **AutoRecon** | Multi-threaded network reconnaissance and enumeration framework | `pip3 install git+https://github.com/Tib3rius/AutoRecon.git` |
| **Axiom** | Dynamic infra framework for parallel cloud-based recon | `git clone https://github.com/pry0cc/axiom.git` |
| **[BackgroundChecks.com](https://www.backgroundchecks.com)** | Background check aggregator (BeenVerified family) | [backgroundchecks.com](https://www.backgroundchecks.com) |
| **[Baidu](https://www.baidu.com)** | Major Chinese search engine — essential for China-focused OSINT | [baidu.com](https://www.baidu.com) |
| **[BeVigil](https://bevigil.com/search)** | Search subdomains, URLs, parameters from mobile applications | [bevigil.com](https://bevigil.com/search) |
| **[BGP.tools](https://bgp.tools)** | Modern BGP toolkit for network reconnaissance | [bgp.tools](https://bgp.tools) |
| **[BinaryEdge](https://www.binaryedge.io)** | Cyber risk and attack-surface intelligence | [binaryedge.io](https://www.binaryedge.io) |
| **[Bitquery](https://bitquery.io)** | Blockchain data APIs for on-chain investigation | [bitquery.io](https://bitquery.io) |
| **[Black Book Online](https://www.blackbookonline.info)** | Free nationwide directory of public-record lookups | [blackbookonline.info](https://www.blackbookonline.info) |
| **BlackEye** | 32+ phishing template builder for credential capture (lab-only) | `git clone https://github.com/An0nUD4Y/blackeye.git` |
| **[Brave Browser](https://brave.com)** | Privacy-focused browser with built-in Tor/IPFS support | [brave.com](https://brave.com) |
| **[Brave Search](https://search.brave.com)** | Independent, transparent, ad-free search engine | [search.brave.com](https://search.brave.com) |
| **[BreachForums Status](https://www.breachforums.cx)** | Status tracking for the rotating BreachForums mirrors | [breachforums.cx](https://www.breachforums.cx) |
| **[Breadcrumbs](https://breadcrumbs.app)** | Free crypto investigation platform — visualize transaction flows | [breadcrumbs.app](https://breadcrumbs.app) |
| **[BrightCloud Threat Intelligence](https://brightcloud.com)** | URL/IP/threat reputation database | [brightcloud.com](https://brightcloud.com) |
| **[BrightCloud URL/IP Lookup](https://brightcloud.com/tools/url-ip-lookup.php)** | Reputation, category, and threat checks for URLs/IPs | [brightcloud.com](https://brightcloud.com/tools/url-ip-lookup.php) |
| **[BscScan](https://bscscan.com)** | Binance Smart Chain explorer — same UX as Etherscan | [bscscan.com](https://bscscan.com) |
| **[CachedView](https://cachedview.com)** | View Google/Bing/Yandex cached versions of any page | [cachedview.com](https://cachedview.com) |
| **[Castrick](https://castrickclues.com)** | Find social media accounts via email, username, phone | [castrickclues.com](https://castrickclues.com) |
| **Censys CLI** | Official Python wrapper and CLI for Censys | `pip3 install censys` |
| **[CertKit Certificate Search](https://www.certkit.io/tools/ct-logs/)** | Fast search for public SSL/TLS certificate records | [certkit.io](https://www.certkit.io/tools/ct-logs/) |
| **[Chainabuse](https://www.chainabuse.com)** | Public crypto-scam reporting database | [chainabuse.com](https://www.chainabuse.com) |
| **[Chainalysis Reactor](https://www.chainalysis.com/product/reactor/)** | Premium blockchain investigation platform | [chainalysis.com](https://www.chainalysis.com/product/reactor/) |
| **[CheckUser](https://checkuser.vercel.app)** | Search username across multiple social networks | [checkuser.vercel.app](https://checkuser.vercel.app) |
| **[CIRCL Hashlookup](https://www.circl.lu/services/hashlookup)** | Free public hashlookup for known software files | [circl.lu](https://www.circl.lu/services/hashlookup) |
| **[Cisco Talos Intelligence](https://talosintelligence.com/reputation_center)** | IP and Domain Reputation Center for real-time detection | [talosintelligence.com](https://talosintelligence.com/reputation_center) |
| **[Clearbit Connect](https://connect.clearbit.com)** | Email finder browser extension with company data | [connect.clearbit.com](https://connect.clearbit.com) |
| **[Cloudflare Radar](https://radar.cloudflare.com)** | Internet traffic patterns, attacks, technology trends | [radar.cloudflare.com](https://radar.cloudflare.com) |
| **[Clustrmaps](https://clustrmaps.com)** | Find people and address information | [clustrmaps.com](https://clustrmaps.com) |
| **[Commander Search](https://www.commandersearch.com)** | Boolean search builder for OSINT investigators | [commandersearch.com](https://www.commandersearch.com) |
| **[Constella Intelligence](https://constellaintelligence.com)** | Identity threat intel from breaches and dark web | [constellaintelligence.com](https://constellaintelligence.com) |
| **[ContactOut](https://contactout.com)** | Find emails and phones for 300M+ professionals | [contactout.com](https://contactout.com) |
| **[CredenShow](https://credenshow.com)** | Identify your compromised credentials before others do | [credenshow.com](https://credenshow.com) |
| **CrossLinked** | LinkedIn enumeration — generate username lists from LinkedIn profiles | `pip3 install crosslinked` |
| **[DBpedia](https://www.dbpedia.org)** | Structured Wikipedia data — SPARQL endpoint | [dbpedia.org](https://www.dbpedia.org) |
| **[Digital Footprint Check](https://www.digitalfootprintcheck.com/free-checker.html)** | Free username check on hundreds of sites | [digitalfootprintcheck.com](https://www.digitalfootprintcheck.com/free-checker.html) |
| **dirsearch** | Web path scanner — advanced wordlist-based directory bruteforce | `pip3 install dirsearch` |
| **[Discord Lookup](https://discordlookup.com)** | Look up Discord user info via ID | [discordlookup.com](https://discordlookup.com) |
| **[DiscordHistory](https://disboard.org)** | Search public Discord servers and messages | [disboard.org](https://disboard.org) |
| **[DNS History](https://dnshistory.org)** | Historical DNS records lookup | [dnshistory.org](https://dnshistory.org) |
| **[DocumentCloud](https://www.documentcloud.org)** | Platform for analyzing, annotating, publishing documents | [documentcloud.org](https://www.documentcloud.org) |
| **[DomainEye Reverse WHOIS](https://domaineye.com/reverse-whois)** | Search domains by registrant data | [domaineye.com](https://domaineye.com/reverse-whois) |
| **dork-cli** | Run Google dorks from the command line | `git clone https://github.com/jgor/dork-cli.git` |
| **[DorkGenius](https://dorkgenius.com)** | AI-powered search query generator for Google, Bing, DuckDuckGo | [dorkgenius.com](https://dorkgenius.com) |
| **[Dorky](https://dorky.io)** | Online dork builder for Google/Bing/DuckDuckGo | [dorky.io](https://dorky.io) |
| **[Dune Analytics](https://dune.com)** | SQL queries over indexed blockchain data | [dune.com](https://dune.com) |
| **[Elliptic](https://www.elliptic.co)** | Crypto financial-crime detection and investigation | [elliptic.co](https://www.elliptic.co) |
| **[EmailRep.io](https://emailrep.io)** | Free email reputation API by Sublime Security | [emailrep.io](https://emailrep.io) |
| **[Epieos Tools](https://tools.epieos.com)** | Reverse-lookup email/phone for Google profile data | [tools.epieos.com](https://tools.epieos.com) |
| **[Epstein Exposed](https://epsteinexposed.com)** | Searchable database of 2M+ DOJ Epstein case docs and network graphs | [epsteinexposed.com](https://epsteinexposed.com) |
| **[ETDA APT Groups](https://apt.etda.or.th/cgi-bin/listgroups.cgi)** | Search threat-actor groups and their tools | [apt.etda.or.th](https://apt.etda.or.th/cgi-bin/listgroups.cgi) |
| **etherscan-py** | Python wrapper for Etherscan API | `pip3 install etherscan-python` |
| **[ExportData](https://www.exportdata.io)** | Historical tweet, follower, and trend export tool | [exportdata.io](https://www.exportdata.io) |
| **[FamilyTreeNow](https://familytreenow.com)** | Free genealogy search — addresses, phones, emails | [familytreenow.com](https://familytreenow.com) |
| **ffuf** | Fast Go-based web fuzzer — directory, parameter, vhost discovery | `go install github.com/ffuf/ffuf/v2@latest` |
| **[Filesec.io](https://filesec.io)** | Catalog of malicious file extensions, risks, OS-level mitigations | [filesec.io](https://filesec.io) |
| **Findomain** | Cross-platform subdomain enumerator with monitoring features | `git clone https://github.com/Findomain/Findomain.git` |
| **[Flickr](https://www.flickr.com)** | Photo-sharing — geosearch + license + camera EXIF intact | [flickr.com](https://www.flickr.com) |
| **[Foller.me](https://foller.me)** | Twitter analytics — bio, languages, hashtags, mentions | [foller.me](https://foller.me) |
| **[Forensically Beta](https://29a.ch/photo-forensics)** | Online image forensics — clone detection, level sweep | [29a.ch](https://29a.ch/photo-forensics) |
| **[FullContact](https://www.fullcontact.com)** | Identity-resolution API and person enrichment | [fullcontact.com](https://www.fullcontact.com) |
| **gau (getallurls)** | Fetch URLs from AlienVault OTX, Wayback, Common Crawl, URLScan | `go install github.com/lc/gau/v2/cmd/gau@latest` |
| **[Geocreepy](http://www.geocreepy.com)** | Geolocation aggregator — pulls geotagged posts across networks | [geocreepy.com](http://www.geocreepy.com) |
| **[GeoHints](https://geohints.com)** | Browser-based satellite/streetview geolocation training & investigation | [geohints.com](https://geohints.com) |
| **[GeoSpy Pro](https://geospy.ai/pro)** | Premium AI image geolocation by Graylark | [geospy.ai](https://geospy.ai/pro) |
| **[Get-Metadata.com](https://www.get-metadata.com)** | Online EXIF extractor — handles .DOCX/.PDF too | [get-metadata.com](https://www.get-metadata.com) |
| **gf** | Wrapper around grep with patterns for bug-bounty workflow | `go install github.com/tomnomnom/gf@latest` |
| **[Ghiro](https://www.getghiro.org)** | Automated digital image forensics | [getghiro.org](https://www.getghiro.org) |
| **git-hound** | Find sensitive data exposed via GitHub code search | `go install github.com/tillson/git-hound@latest` |
| **github_monitor** | Real-time tracking of GitHub user activity and repo changes | `git clone https://github.com/misiektoja/github_monitor.git` |
| **gitleaks** | Detect secrets, credentials, and API keys in git repos | `go install github.com/gitleaks/gitleaks/v8@latest` |
| **[Google Guide Advanced Operators](http://www.googleguide.com/advanced_operators_reference.html)** | Reference for Google search operators | [googleguide.com](http://www.googleguide.com/advanced_operators_reference.html) |
| **[Google Hacking Database (GHDB)](https://www.exploit-db.com/google-hacking-database)** | Index of dorks for finding publicly exposed info | [exploit-db.com](https://www.exploit-db.com/google-hacking-database) |
| **GoSpider** | Fast Go web spider for crawling/audit | `go install github.com/jaeles-project/gospider@latest` |
| **gowitness** | Modern Go-based web screenshot utility (Aquatone successor) | `go install github.com/sensepost/gowitness@latest` |
| **[GrayhatWarfare](https://grayhatwarfare.com)** | Index of open Amazon S3 buckets — find exposed cloud data | [grayhatwarfare.com](https://grayhatwarfare.com) |
| **GreyNoise CLI** | Command-line tool for GreyNoise mass-scanner intel | `pip3 install greynoise` |
| **[GreyNoise Visualizer](https://viz.greynoise.io)** | Tells you which IPs are noise vs targeted threats | [viz.greynoise.io](https://viz.greynoise.io) |
| **hakrawler** | Fast Go web crawler for endpoint and asset discovery | `go install github.com/hakluke/hakrawler@latest` |
| **[Hatching Triage](https://tria.ge)** | Modern malware sandbox with kernel-level monitoring | [tria.ge](https://tria.ge) |
| **[haveibeenzuckered](https://haveibeenzuckered.com)** | Check if a phone number is in the 533M Facebook breach | [haveibeenzuckered.com](https://haveibeenzuckered.com) |
| **[HIB Ransomed](https://haveibeenransom.com)** | Check if your data has been leaked by ransomware groups | [haveibeenransom.com](https://haveibeenransom.com) |
| **httprobe** | Take a list of domains and probe for working HTTP/HTTPS | `go install github.com/tomnomnom/httprobe@latest` |
| **[Hudson Rock](https://www.hudsonrock.com/free-tools)** | Free infostealer-compromise check tools (domain/email/IP) | [hudsonrock.com](https://www.hudsonrock.com/free-tools) |
| **[Hybrid Analysis](https://www.hybrid-analysis.com)** | Free advanced malware analysis service by CrowdStrike | [hybrid-analysis.com](https://www.hybrid-analysis.com) |
| **[IKnowYour.Dad](https://iknowyour.dad)** | Data breach search engine | [iknowyour.dad](https://iknowyour.dad) |
| **[Imgur](https://imgur.com)** | Image hosting — meme tracing and reverse search | [imgur.com](https://imgur.com) |
| **insta-dl** | Async Instagram downloader for profiles, posts, reels, stories, highlights, hashtags, and comments | `pip3 install instagram-dl` |
| **instagram_monitor** | Real-time tracking of Instagram users with email alerts and CSV logs | `git clone https://github.com/misiektoja/instagram_monitor.git` |
| **insto** | Interactive Instagram OSINT CLI with snapshots, diffs, and Maltego-ready exports | `pip3 install insto` |
| **[Intelligence X (intelx.io)](https://intelx.io)** | Selective archive search — emails, leaks, paste sites, dark-web | [intelx.io](https://intelx.io) |
| **Interlace** | Easily turn single-threaded CLI apps into multi-threaded jobs | `git clone https://github.com/codingo/Interlace.git` |
| **[Joe Sandbox](https://www.joesandbox.com)** | Deep automated malware analysis (free tier) | [joesandbox.com](https://www.joesandbox.com) |
| **JSFinder** | Find JS files referenced from a URL — endpoints / API paths | `git clone https://github.com/Threezh1/JSFinder.git` |
| **[Kagi Search](https://kagi.com)** | Premium privacy-respecting search engine, no ads, no tracking | [kagi.com](https://kagi.com) |
| **knock** | Domain knock — security testing via DNS | `git clone https://github.com/guelfoweb/knock.git` |
| **Knockpy** | Subdomain enumeration scan with virtual host discovery | `pip3 install knock-subdomains` |
| **linkedin2username** | Generate usernames from a target's LinkedIn employees | `git clone https://github.com/initstring/linkedin2username.git` |
| **LinkedInDumper** | Dump/scrape company employees from LinkedIn API | `git clone https://github.com/l4rm4nd/LinkedInDumper.git` |
| **[Malpedia](https://malpedia.caad.fkie.fraunhofer.de)** | Threat-actor groups, malware families, and analysis by Fraunhofer | [malpedia.caad.fkie.fraunhofer.de](https://malpedia.caad.fkie.fraunhofer.de) |
| **[MalShare](https://malshare.com)** | Free malware sample repository for researchers | [malshare.com](https://malshare.com) |
| **massdns** | High-performance DNS stub resolver for bulk lookups | `git clone https://github.com/blechschmidt/massdns.git` |
| **meg** | Fetch many paths for many hosts without flooding | `go install github.com/tomnomnom/meg@latest` |
| **[Memento Time Travel](https://timetravel.mementoweb.org)** | Federated search across multiple web archives | [timetravel.mementoweb.org](https://timetravel.mementoweb.org) |
| **[Metadata2Go](https://www.metadata2go.com)** | Free online metadata extractor for any file | [metadata2go.com](https://www.metadata2go.com) |
| **[Metadata Remover — Metadata Viewer](https://metadataremover.ai/metadata-viewer)** | Browser-local EXIF/IPTC/XMP inspection for images; corroborate forensic findings independently | [metadataremover.ai](https://metadataremover.ai/metadata-viewer) |
| **[MetaDefender Cloud](https://metadefender.com)** | Multi-engine file/URL/IP scanning by OPSWAT | [metadefender.com](https://metadefender.com) |
| **[MetaSleuth](https://metasleuth.io)** | Free + paid crypto transaction tracing tool | [metasleuth.io](https://metasleuth.io) |
| **[MISP Galaxy](https://www.misp-galaxy.org)** | Adversary group identification used by SOCs/ISACs | [misp-galaxy.org](https://www.misp-galaxy.org) |
| **Mitaka** | Browser extension for OSINT — extract IoCs from highlighted text | `git clone https://github.com/ninoseki/mitaka.git` |
| **[Mnemonic Passive DNS](https://passivedns.mnemonic.no)** | Free passive-DNS query tool | [passivedns.mnemonic.no](https://passivedns.mnemonic.no) |
| **[Mojeek](https://www.mojeek.com)** | Independent search engine that doesn't track users | [mojeek.com](https://www.mojeek.com) |
| **[Mylnikov Geolocation](https://www.mylnikov.org)** | BSSID/Wi-Fi MAC to coordinates lookup | [mylnikov.org](https://www.mylnikov.org) |
| **Naabu** | Fast Go-based port scanner from ProjectDiscovery | `go install github.com/projectdiscovery/naabu/v2/cmd/naabu@latest` |
| **[Name Checkr](https://www.namecheckr.com)** | Check domain and username across many platforms | [namecheckr.com](https://www.namecheckr.com) |
| **[Name Checkup](https://namecheckup.com)** | Check username availability across social media | [namecheckup.com](https://namecheckup.com) |
| **[NameKetchup](https://nameketchup.com)** | Check domain + username on popular social media | [nameketchup.com](https://nameketchup.com) |
| **[Naver](https://www.naver.com)** | South Korean search engine — local content not on Google | [naver.com](https://www.naver.com) |
| **[NerdyData](https://nerdydata.com)** | Search engine for source code across the public web | [nerdydata.com](https://nerdydata.com) |
| **[Netcraft Site Report](https://sitereport.netcraft.com)** | Web technology, hosting history, takedown service | [sitereport.netcraft.com](https://sitereport.netcraft.com) |
| **Oblivion** | OSINT framework | `git clone https://github.com/loseys/Oblivion.git` |
| **[ODIN](https://search.odin.io)** | Search hosts, CVEs, exposed buckets — 10 free searches/day | [search.odin.io](https://search.odin.io) |
| **[Offshore Leaks Database](https://offshoreleaks.icij.org)** | Panama/Pandora/Paradise Papers searchable database | [offshoreleaks.icij.org](https://offshoreleaks.icij.org) |
| **[OnionLand Search](https://onionlandsearchengine.com)** | Search engine for dark-web content | [onionlandsearchengine.com](https://onionlandsearchengine.com) |
| **[Open-Source Intelligence (Reverse Image)](https://oosint.com)** | Yandex/Bing/TinEye combined reverse-image search | [oosint.com](https://oosint.com) |
| **[OpenCellID](https://opencellid.org)** | Largest public database of cell-tower IDs | [opencellid.org](https://opencellid.org) |
| **opencorporates-cli** | Command-line client for OpenCorporates API | `pip3 install opencorporates` |
| **[OpenPhish](https://openphish.com)** | Live phishing URL feed | [openphish.com](https://openphish.com) |
| **[OpenRailwayMap](https://www.openrailwaymap.org)** | Worldwide rail network map — rolling stock, infrastructure, signals | [openrailwaymap.org](https://www.openrailwaymap.org) |
| **[OpenSanctions](https://opensanctions.org)** | Consolidated database of sanctioned entities across 200+ sources | [opensanctions.org](https://opensanctions.org) |
| **[OXT (OpenXt)](https://oxt.me)** | Bitcoin transaction graph explorer with clustering | [oxt.me](https://oxt.me) |
| **[PassiveTotal (RiskIQ)](https://community.riskiq.com)** | Passive DNS, WHOIS, SSL cert pivots — now Microsoft Defender TI | [community.riskiq.com](https://community.riskiq.com) |
| **[Peekalink](https://www.peekalink.io)** | Preview any URL — title, description, screenshot via API | [peekalink.io](https://www.peekalink.io) |
| **[PhishStats](https://phishstats.info)** | Live phishing intelligence feed and search | [phishstats.info](https://phishstats.info) |
| **[PhishTank](https://phishtank.org)** | Anti-phishing community — verified phishing URLs | [phishtank.org](https://phishtank.org) |
| **[Picarta.ai](https://picarta.ai)** | AI-powered photo geolocation predictor | [picarta.ai](https://picarta.ai) |
| **[Pinterest](https://www.pinterest.com)** | Visual search engine — alternate reverse-image source | [pinterest.com](https://www.pinterest.com) |
| **[PolygonScan](https://polygonscan.com)** | Polygon (Matic) blockchain explorer | [polygonscan.com](https://polygonscan.com) |
| **[Predicta Search](https://predictasearch.com)** | Search social accounts by email or phone | [predictasearch.com](https://predictasearch.com) |
| **[Public Transport Maps](https://cipher387.github.io/public_transport_maps/)** | 20+ online public transport maps by country | [cipher387.github.io](https://cipher387.github.io/public_transport_maps/) |
| **[PublicWWW](https://publicwww.com)** | Search the web's source code (HTML/JS/CSS) for snippets, trackers, scripts | [publicwww.com](https://publicwww.com) |
| **[PullPush](https://pullpush.io)** | Index/retrieval service for Reddit (incl. deleted content) | [pullpush.io](https://pullpush.io) |
| **[Pushshift API](https://pushshift.io)** | Historical Reddit data — posts, comments, metadata | [pushshift.io](https://pushshift.io) |
| **[Quake (360.cn)](https://quake.360.net)** | Chinese internet asset search engine | [quake.360.net](https://quake.360.net) |
| **[RECAP Archive](https://www.courtlistener.com/recap/)** | Public archive of PACER court documents | [courtlistener.com](https://www.courtlistener.com/recap/) |
| **reconFTW** | Full-suite domain recon — subdomain enum, port scan, vuln scan in one pipeline | `git clone https://github.com/six2dez/reconftw.git` |
| **[RedditMetis](https://redditmetis.com)** | Reddit user analysis — summary, top posts, activity stats | [redditmetis.com](https://redditmetis.com) |
| **[RedditSearch.io](https://redditsearch.io)** | Search archived Reddit content via Pushshift mirror | [redditsearch.io](https://redditsearch.io) |
| **[Revealer.cc](https://revealer.cc)** | Discord-based account-checker & breach lookup | [revealer.cc](https://revealer.cc) |
| **[RocketReach](https://rocketreach.co)** | Find professional emails/phones for 700M+ profiles | [rocketreach.co](https://rocketreach.co) |
| **RustScan** | Modern port scanner — finds open ports, then pipes to Nmap | `git clone https://github.com/RustScan/RustScan.git` |
| **[ScamAdviser](https://www.scamadviser.com)** | Check website trustworthiness scores | [scamadviser.com](https://www.scamadviser.com) |
| **[Scribd](https://www.scribd.com)** | Search for documents, presentations, sheet music, ebooks | [scribd.com](https://www.scribd.com) |
| **[searchcode](https://searchcode.com)** | Search 75+ billion lines of public source code across GitHub/GitLab/Bitbucket | [searchcode.com](https://searchcode.com) |
| **Seeker** | Geolocation by phishing — collects precise GPS via WebRTC + browser geolocation | `git clone https://github.com/thewhiteh4t/seeker.git` |
| **[Shadowserver Dashboard](https://dashboard.shadowserver.org/)** | Global statistics on cyber threats by Shadowserver Foundation | [dashboard.shadowserver.org](https://dashboard.shadowserver.org/) |
| **Sherloq** | Open-source image forensics toolset | `git clone https://github.com/GuidoBartoli/sherloq.git` |
| **Shodan CLI** | Official Shodan command-line client | `pip3 install shodan` |
| **[SlideShare](https://www.slideshare.net)** | Search public PowerPoint/PDF presentations | [slideshare.net](https://www.slideshare.net) |
| **smap** | Drop-in replacement for nmap powered by shodan.io | `go install github.com/s0md3v/smap/cmd/smap@latest` |
| **[Snusbase API](https://snusbase.com/api)** | API access to breach data (premium) | [snusbase.com](https://snusbase.com/api) |
| **[SourceGraph](https://sourcegraph.com/search)** | Search code from millions of open-source repos | [sourcegraph.com](https://sourcegraph.com/search) |
| **[SpyCloud](https://spycloud.com)** | Account-takeover prevention + identity exposure data | [spycloud.com](https://spycloud.com) |
| **[Startpage](https://www.startpage.com)** | Privacy-focused search — Google results with no tracking | [startpage.com](https://www.startpage.com) |
| **[StealSeek](https://stealseek.io)** | Search engine for finding and analyzing data breaches | [stealseek.io](https://stealseek.io) |
| **[SubredditStats](https://subredditstats.com)** | Subreddit user-overlap, growth, top posts | [subredditstats.com](https://subredditstats.com) |
| **[Telegago](https://cse.google.com/cse?cx=006368593537057042503:efxu7xprihg)** | Google CSE for finding public/private Telegram channels | [cse.google.com](https://cse.google.com/cse?cx=006368593537057042503:efxu7xprihg) |
| **Telegram Nearby Map** | Find positions of nearby Telegram users via OSM | `git clone https://github.com/tejado/telegram-nearby-map.git` |
| **[Telegram Search (lyzem.com)](https://lyzem.com)** | Search public Telegram messages and channels | [lyzem.com](https://lyzem.com) |
| **[Telemetr](https://telemetr.io)** | Telegram channel/group analytics | [telemetr.io](https://telemetr.io) |
| **Telerecon** | Reconnaissance framework for investigating Telegram | `git clone https://github.com/sockysec/Telerecon.git` |
| **[Teleteg](https://teleteg.com)** | Telegram search engine — 10 free results | [teleteg.com](https://teleteg.com) |
| **[TGStat](https://tgstat.com)** | Telegram channel analytics — post stats, audience overlap | [tgstat.com](https://tgstat.com) |
| **[The Hidden Wiki](https://thehiddenwiki.org)** | Curated directory of dark-web sites (mirror-dependent) | [thehiddenwiki.org](https://thehiddenwiki.org) |
| **the-endorser** | Map LinkedIn endorsements/skills to draw out person relationships | `git clone https://github.com/eth0izzle/the-endorser.git` |
| **[TikTok Finder Country](https://tiktokfindercountry.xyz)** | Free OSINT lookup for TikTok account country/language | [tiktokfindercountry.xyz](https://tiktokfindercountry.xyz) |
| **TorghostNG** | Anonymize all OS traffic via Tor (Linux) | `git clone https://github.com/githacktools/TorghostNG.git` |
| **TOsint** | Extract info from Telegram bots and channels | `git clone https://github.com/drego85/tosint.git` |
| **[Trace](https://trace.manus.space)** | Search usernames, emails, phones across 600+ platforms with risk scoring | [trace.manus.space](https://trace.manus.space) |
| **[Transit Visualisation Client](https://tracker.geops.ch)** | Real-time public transport across 700+ cities | [tracker.geops.ch](https://tracker.geops.ch) |
| **[Trends24](https://trends24.in)** | Twitter trends history per country | [trends24.in](https://trends24.in) |
| **[TRM Labs](https://www.trmlabs.com)** | Crypto compliance and investigation platform | [trmlabs.com](https://www.trmlabs.com) |
| **[TweetBinder](https://www.tweetbinder.com)** | Twitter/X analytics dashboards | [tweetbinder.com](https://www.tweetbinder.com) |
| **[Twitch Search](https://www.twitch.tv/directory)** | Search live streams by category, language, viewer count | [twitch.tv](https://www.twitch.tv/directory) |
| **[Twiteur](https://twiteur.com)** | Twitter/X advanced search wrapper — geo, date, sentiment | [twiteur.com](https://twiteur.com) |
| **[U-Find](https://u-find.com)** | Reddit user comment / submission scraper | [u-find.com](https://u-find.com) |
| **uncover** | ProjectDiscovery — quickly find exposed hosts via Shodan/Censys/Fofa | `go install github.com/projectdiscovery/uncover/cmd/uncover@latest` |
| **URLCrazy** | Generate domain typos and check availability/registration | `git clone https://github.com/urbanadventurer/urlcrazy.git` |
| **[URLhaus (abuse.ch)](https://urlhaus.abuse.ch)** | Database of malicious URLs used for malware distribution | [urlhaus.abuse.ch](https://urlhaus.abuse.ch) |
| **[User-Searcher](https://www.user-searcher.com)** | Search a username across 2000+ websites | [user-searcher.com](https://www.user-searcher.com) |
| **[Vehicle Number Search Toolbox](https://cipher387.github.io/venicle_number_search_toolbox/)** | Search 14 country license plates from one page | [cipher387.github.io](https://cipher387.github.io/venicle_number_search_toolbox/) |
| **[Venacus](https://venacus.com)** | Search for your data breaches and get notified when compromised | [venacus.com](https://venacus.com) |
| **[Vigilante.pw](https://vigilante.pw)** | Index of dumped databases (educational) | [vigilante.pw](https://vigilante.pw) |
| **[VMRay Analyzer](https://www.vmray.com)** | Malware sandbox analysis platform | [vmray.com](https://www.vmray.com) |
| **[WalletExplorer](https://walletexplorer.com)** | Smart bitcoin block explorer — clusters addresses by entity | [walletexplorer.com](https://walletexplorer.com) |
| **waybackurls** | Fetch all URLs the Wayback Machine knows about a domain | `go install github.com/tomnomnom/waybackurls@latest` |
| **[Whoisology](https://whoisology.com)** | Reverse WHOIS — find domains by registrant | [whoisology.com](https://whoisology.com) |
| **[Whoxy](https://www.whoxy.com)** | WHOIS lookup with reverse-WHOIS, history, and bulk API | [whoxy.com](https://www.whoxy.com) |
| **[Wikidata](https://www.wikidata.org)** | Wikipedia's structured-data backbone — query via SPARQL | [wikidata.org](https://www.wikidata.org) |
| **[Wikipedia](https://en.wikipedia.org)** | Free encyclopedia — start of every people/place investigation | [en.wikipedia.org](https://en.wikipedia.org) |
| **[WorldLicensePlates](http://www.worldlicenseplates.com)** | Graphic index of license plates by country | [worldlicenseplates.com](http://www.worldlicenseplates.com) |
| **XeuleDoc** | Fetch info on Google Docs/Sheets/Slides/Drawings without auth | `pip3 install xeuledoc` |
| **[Yandex](https://www.yandex.com)** | Russian search engine — strong reverse-image and Cyrillic support | [yandex.com](https://www.yandex.com) |
| **[YARAify](https://yaraify.abuse.ch/scan/)** | Collaborative YARA engine for open threat intel via file pattern matching | [yaraify.abuse.ch](https://yaraify.abuse.ch/scan/) |
| **[Yumpu](https://www.yumpu.com)** | Document publishing — sometimes leaks via search | [yumpu.com](https://www.yumpu.com) |
| **[ZeroBounce](https://www.zerobounce.net)** | Email validation and deliverability service | [zerobounce.net](https://www.zerobounce.net) |
| **ZoomEye CLI** | Command-line interface for ZoomEye internet asset search | `pip3 install zoomeye` |

---

## 50. 🇬🇪 Georgian OSINT Arsenal (500+ resources)

> 🇬🇪 The most comprehensive OSINT resource collection for the country of Georgia (Sakartvelo).
>
> **28 sub-sections · 500+ verified resources** — government databases, public registries, investigative tools, open-data portals, Telegram bots & more.
>
> **Pro tip:** Pair this with my [Georgian-Wordlist](https://github.com/rawfilejson/Georgian-Wordlist) (760K Georgian words for security research) and [Wordlist-Generator](https://github.com/rawfilejson/Wordlist-Generator).

> [!WARNING]
> **Educational and lawful investigative use only.** Respect Georgia's *Law on Personal Data Protection* and the GDPR. Authors are not responsible for any misuse.

<details>
<summary><b>📋 Click to expand the full Georgian OSINT Arsenal (28 sub-sections)</b></summary>

### 50.1 Government Registries & E-Government Portals

The Georgian government has one of the most digitized public service systems in the post-Soviet space. Most services are accessible through centralized portals.
### Core Government Portals

| Resource | URL | Description |
|---|---|---|
| my.gov.ge | [https://my.gov.ge](https://my.gov.ge) | Unified e-government portal -- birth/death certificates, property search, business registry, correspondence with agencies |
| Government of Georgia | [https://gov.ge](https://gov.ge) | Official government website with news, ministries, and policy documents |
| Parliament of Georgia | [https://parliament.ge](https://parliament.ge) | Parliamentary records, laws, MP profiles, committee meetings, voting records |
| President of Georgia | [https://president.gov.ge](https://president.gov.ge) | Presidential decrees, pardons, appointments, official statements |
| Ministry of Justice | [https://justice.gov.ge](https://justice.gov.ge) | Justice system information, legal aid, notary services |
| Ministry of Internal Affairs (MIA) | [https://police.ge](https://police.ge) | Police reports, wanted persons, crime statistics, press releases |
| Ministry of Finance | [https://mof.gov.ge](https://mof.gov.ge) | State budget, fiscal data, financial reports |
| Ministry of Foreign Affairs | [https://mfa.gov.ge](https://mfa.gov.ge) | Diplomatic information, consular services, international agreements |
| Ministry of Economy | [https://economy.ge](https://economy.ge) | Economic policy, trade data, investment climate |
| Ministry of Regional Development | [https://mrdi.gov.ge](https://mrdi.gov.ge) | Infrastructure projects, regional development data |

### Public Registries & Databases

| Resource | URL | Description |
|---|---|---|
| National Agency of Public Registry (NAPR) | [https://napr.gov.ge](https://napr.gov.ge) | Central hub for property, business, and civil registry -- 331 services |
| Entrepreneur Registry | [https://enreg.reestri.gov.ge](https://enreg.reestri.gov.ge) | Search any business entity -- name, ID, registration date, founders, directors |
| Property Registry | [https://napr.gov.ge/en/service/registers](https://napr.gov.ge/en/service/registers) | Search immovable property records by cadastral code or owner |
| Civil Registry | [https://napr.gov.ge](https://napr.gov.ge) | Birth, marriage, death, divorce records (restricted access) |
| Revenue Service (RS) | [https://rs.ge](https://rs.ge) | Tax identification lookup, customs data, VAT portal, business tax status |
| RS Taxpayer Search | [https://rs.ge/TaxPayer-en](https://rs.ge/TaxPayer-en) | Search taxpayers by name or identification number |
| RS E-Services | [https://rs.ge/Eservices-en](https://rs.ge/Eservices-en) | Auto/Moto levy calculator, customs duties calculator, property tax calculator |
| Legislative Herald (Matsne) | [https://matsne.gov.ge](https://matsne.gov.ge) | All Georgian legislation -- laws, decrees, regulations, international treaties (full text) |
| National Archives | [https://archive.gov.ge](https://archive.gov.ge) | Historical documents, electronic catalogues, digitized archives |
| Service Development Agency (SDA) | [https://sda.gov.ge](https://sda.gov.ge) | ID cards, passports, residence permits, citizenship, personal data services |
| Civil Service Bureau | [https://csb.gov.ge](https://csb.gov.ge) | Public servant registry, HR policy, ethics, training programs |
| State Inspector | [https://dis.gov.ge](https://dis.gov.ge) | Personal data protection authority, surveillance oversight |
| NSDI Geoportal | [https://nsdi.gov.ge](https://nsdi.gov.ge) | National Spatial Data Infrastructure -- land parcels, addresses, cadastral maps |
| Data Exchange Agency (DEA) | [https://dea.gov.ge](https://dea.gov.ge) | Government interoperability platform, electronic document exchange |
| National Food Agency | [https://nfa.gov.ge](https://nfa.gov.ge) | Food safety registry, licensed food businesses, inspection results |
| National Environmental Agency | [https://nea.gov.ge](https://nea.gov.ge) | Environmental monitoring data, weather, seismic data |
| Competition Agency | [https://competition.ge](https://competition.ge) | Market concentration, merger decisions, anti-trust investigations |
| Insurance State Supervision | [https://insurance.gov.ge](https://insurance.gov.ge) | Licensed insurance companies, regulatory data |
| National Wine Agency | [https://wine.gov.ge](https://wine.gov.ge) | Georgian wine registry, appellation data, export statistics |

### Key my.gov.ge Services for OSINT

| Service | What You Can Find |
|---|---|
| Property Registry Search | Real estate ownership by cadastral code |
| Entrepreneur/Legal Entity Search | Business registration status, founders, directors |
| Birth/Death Certificates | (Restricted) Vital records verification |
| Correspondence with Agencies | Submit information requests to any government body |
| Tax Debt Information | Check individual tax debts (limited) |
| Enforcement Cases | Check for enforcement proceedings against individuals |
| Notary Registry | Registered notaries and their activities |

---
### 50.2 Person Search & Identity OSINT

### Phone Number & Identity Lookup

| Resource | URL | Description | Free/Paid |
|---|---|---|---|
| GetContact | [https://getcontact.com](https://getcontact.com) | Crowd-sourced caller ID -- see how a number is saved in others' phones | Freemium |
| TrueCaller | [https://truecaller.com](https://truecaller.com) | Caller ID and spam detection -- Georgian numbers work well | Freemium |
| Sync.me | [https://sync.me](https://sync.me) | Reverse phone lookup with social profile matching | Free |
| NumBuster | [https://numbuster.com](https://numbuster.com) | Phone number lookup popular in CIS countries | Free |
| Pipl | [https://pipl.com](https://pipl.com) | Deep people search engine, works with Georgian data | Paid |
| Nomrebi (Phone Book) | [https://phonebookoftheworld.com/tbilisi/](https://phonebookoftheworld.com/tbilisi/) | Tbilisi White Pages / Yellow Pages | Free |
| 114 Directory | Dial 114 from Georgian number | Georgian telephone directory assistance | Free |
| Eye of God (Глаз Бога) | Telegram: @EyeOfGodBot | CIS-focused person search by phone, name, car plate | Paid |
| Quick OSINT | Telegram: @QuickOSINT_bot | Person search across CIS databases | Paid |
| USSearcher | Telegram: @USSearcher_bot | Multi-database person lookup | Paid |

### Email & Username OSINT

| Tool | URL | Description |
|---|---|---|
| Hunter.io | [https://hunter.io](https://hunter.io) | Find email addresses associated with Georgian domains |
| EmailRep | [https://emailrep.io](https://emailrep.io) | Email reputation and breach exposure check |
| Have I Been Pwned | [https://haveibeenpwned.com](https://haveibeenpwned.com) | Check if Georgian email addresses appear in data breaches |
| Epieos | [https://epieos.com](https://epieos.com) | Email OSINT -- Google ID, linked accounts, profile pictures |
| Holehe | [https://github.com/megadose/holehe](https://github.com/megadose/holehe) | Check which platforms an email is registered on |
| Sherlock | [https://github.com/sherlock-project/sherlock](https://github.com/sherlock-project/sherlock) | Username search across 400+ social platforms |
| Maigret | [https://github.com/soxoj/maigret](https://github.com/soxoj/maigret) | Advanced username search across 2500+ sites |
| WhatsMyName | [https://whatsmyname.app](https://whatsmyname.app) | Username enumeration on hundreds of sites |

### Georgian-Specific Person Search

| Method | Details |
|---|---|
| Facebook (Georgian users) | ~2.5M Georgian users. Search by name in Georgian script. Many profiles have phone numbers visible |
| VK.com | Popular among Russian-speaking Georgians and occupied territories |
| OK.ru (Odnoklassniki) | Popular among older Georgian demographic |
| Instagram | Very popular in Georgia, especially ages 18-35 |
| LinkedIn | Professional profiles, especially for business investigations |
| Google Search | `"name surname" site:facebook.com/` or `"name" "+995"` |

---
### 50.3 Company & Business Intelligence

### Primary Business Registries

| Resource | URL | Description |
|---|---|---|
| Entrepreneur Registry (NAPR) | [https://enreg.reestri.gov.ge](https://enreg.reestri.gov.ge) | Official business entity search -- name, ID number, legal form, status, founders, directors, address |
| RS Taxpayer Portal | [https://rs.ge/TaxPayer-en](https://rs.ge/TaxPayer-en) | Tax identification lookup, business activity status |
| OpenCorporates (Georgia) | [https://opencorporates.com/companies/ge](https://opencorporates.com/companies/ge) | International business search with Georgian companies |
| OpenSanctions (Georgian Registry) | [https://opensanctions.org/datasets/ext_ge_company_registry/](https://opensanctions.org/datasets/ext_ge_company_registry/) | Georgian company data in structured format |

### Financial & Investment Data

| Resource | URL | Description |
|---|---|---|
| National Bank of Georgia (NBG) | [https://nbg.gov.ge](https://nbg.gov.ge) | Banking supervision, exchange rates, financial statistics, AML sanctions |
| NBG AML/CFT Sanctions | [https://nbg.gov.ge/en/supervision/aml-cft](https://nbg.gov.ge/en/supervision/aml-cft) | Fines and sanctions on financial institutions for AML failures |
| Financial Monitoring Service (FMS) | [https://fms.gov.ge](https://fms.gov.ge) | Georgia's financial intelligence unit -- suspicious transaction reports |
| Georgian Stock Exchange | [https://gse.ge](https://gse.ge) | Listed companies, stock data, financial disclosures |
| GITA (Innovation & Tech Agency) | [https://gita.gov.ge](https://gita.gov.ge) | Tech company grants, startup ecosystem data |

### Company Due Diligence

| Data Point | How to Find |
|---|---|
| Company Name & ID | enreg.reestri.gov.ge -- search by name or 9/11-digit ID |
| Directors & Founders | NAPR extract -- shows current and historical directors |
| Tax Status | rs.ge -- check if company is active taxpayer |
| Property Owned | NAPR property registry -- search by company name |
| Procurement Contracts | tenders.procurement.gov.ge -- search by supplier name |
| Court Cases | ecd.court.ge -- search by company name or ID |
| Sanctions | opensanctions.org -- cross-reference with international sanctions |
| International Connections | OpenCorporates -- linked entities across jurisdictions |

---
### 50.4 Legal & Court Records

### Court Databases

| Resource | URL | Description |
|---|---|---|
| Unified Court Decisions Database | [https://ecd.court.ge](https://ecd.court.ge) | Search court decisions from all three instances (note: decisions after April 2020 may not be published) |
| Court Decisions Search | [https://ecd.court.ge/Decision](https://ecd.court.ge/Decision) | Search by case number, date, court name, category |
| Court Acts / Final Documents | [https://ecd.court.ge/FinalDocument](https://ecd.court.ge/FinalDocument) | Search by document barcode or case number |
| Public Notifications | [https://ecd.court.ge/PublicNotification](https://ecd.court.ge/PublicNotification) | Court public notifications -- useful for finding parties |
| Current Cases & Hearings | [https://ecd.court.ge/CurrentCase](https://ecd.court.ge/CurrentCase) | Ongoing cases with hearing dates and judges |
| E-Court Portal | [https://ecourt.ge](https://ecourt.ge) | Electronic court filing system (requires registration) |
| Supreme Court of Georgia | [https://supremecourt.ge](https://supremecourt.ge) | Supreme Court decisions, practice, and cassation rulings |
| Constitutional Court | [https://constcourt.ge](https://constcourt.ge) | Constitutional Court decisions and petitions |
| CourtWatch.ge | [https://courtwatch.ge](https://courtwatch.ge) | Independent court monitoring and judicial analysis |

### Key Legal Resources

| Resource | URL | Description |
|---|---|---|
| Matsne (Legislative Herald) | [https://matsne.gov.ge](https://matsne.gov.ge) | All Georgian laws in full text -- searchable database |
| Criminal Code of Georgia | [https://matsne.gov.ge/en/document/view/16426](https://matsne.gov.ge/en/document/view/16426) | Full text of criminal code |
| Civil Code of Georgia | [https://matsne.gov.ge/en/document/view/31702](https://matsne.gov.ge/en/document/view/31702) | Full text of civil code |
| Georgian Bar Association | [https://gba.ge](https://gba.ge) | Lawyer directory, disciplinary proceedings |
| GYLA (Georgian Young Lawyers) | [https://gyla.ge](https://gyla.ge) | Legal analysis, human rights reports, election monitoring |
| Prosecutor's Office | [https://pog.gov.ge](https://pog.gov.ge) | Prosecution data, high-profile cases, statistics |
| Probation Bureau | [https://probation.moj.gov.ge](https://probation.moj.gov.ge) | Probation data and offender supervision |
| Ombudsman (Public Defender) | [https://ombudsman.ge](https://ombudsman.ge) | Human rights reports, complaints, recommendations |

### Searching Court Records -- Tips

```
1. Go to ecd.court.ge/Decision
2. Select court instance (First Instance / Appeals / Cassation)
3. Select court name (e.g., Tbilisi City Court)
4. Select case category (Civil / Criminal / Administrative)
### 50.5 Enter case number or date range

### 50.6 Note: Personal data is anonymized in published decisions

### 50.7 For cases after April 2020 -- many are NOT published online

```
5. Real Estate & Property OSINT
### Property Registries

| Resource | URL | Description |
|---|---|---|
| NAPR Property Registry | [https://napr.gov.ge](https://napr.gov.ge) | Official immovable property registry -- ownership, mortgages, encumbrances |
| NAPR Extract Service | [https://napr.gov.ge/en/service/information-services/extract-public-register](https://napr.gov.ge/en/service/information-services/extract-public-register) | Order official property extracts (fee-based) |
| NSDI Geoportal | [https://nsdi.gov.ge](https://nsdi.gov.ge) | Interactive map with cadastral boundaries, land parcels, addresses |
| my.gov.ge Property Search | [https://my.gov.ge](https://my.gov.ge) | Search property registry applications |

### Real Estate Portals (OSINT Gold Mines)

| Portal | URL | Description |
|---|---|---|
| SS.GE (Home) | [https://home.ss.ge](https://home.ss.ge) | Georgia's largest classifieds -- apartments, houses, commercial (with photos, prices, owner contacts) |
| MyHome.ge | [https://myhome.ge](https://myhome.ge) | Major real estate portal with detailed listings and agent contacts |
| Livo.ge | [https://livo.ge](https://livo.ge) | Real estate with 3D tours, auctions, property evaluation tools |
| Home.ge | [https://home.ge](https://home.ge) | Real estate portal with buying/selling/renting listings |
| Korter.ge | [https://korter.ge](https://korter.ge) | New construction and apartment search platform |
| TbilisiHome.ge | [https://tbilisihome.ge](https://tbilisihome.ge) | Tbilisi-focused real estate listings |
| HomeSearch.ge | [https://homesearch.ge](https://homesearch.ge) | Multi-language property search platform |
| Gavel.ge | [https://gavel.ge](https://gavel.ge) | Aggregates real estate auctions from Livo, eAuction.ge, Tbilisi Municipality |

### Property OSINT Workflow

```
1. Get person's name or company ID
2. Search NAPR (napr.gov.ge) for registered properties
3. Cross-reference with ss.ge/myhome.ge for listings (may show photos, addresses)
4. Check nsdi.gov.ge for cadastral boundaries and neighbors
5. Search eauction.ge for any auctioned/seized properties
6. Check ecd.court.ge for property-related litigation
```
6. Vehicle & Transport OSINT
### Vehicle Databases

| Resource | URL | Description |
|---|---|---|
| RS Auto/Moto Levy Calculator | [https://rs.ge/Eservices-en](https://rs.ge/Eservices-en) | Calculate vehicle taxes by details |
| MyAuto.ge | [https://myauto.ge](https://myauto.ge) | Georgia's largest vehicle marketplace -- VIN check, Carfax reports, listing history |
| MyAuto VIN Check | [https://myauto.ge/en/vin](https://myauto.ge/en/vin) | Check vehicle history by VIN code (Carfax & ClearVin) |
| AutoPapa.ge | [https://autopapa.ge](https://autopapa.ge) | US auto auction imports -- vehicle history, photos, damage reports |
| Myparts.ge | [https://myparts.ge](https://myparts.ge) | Auto parts marketplace -- useful for identifying vehicles |
| SS.GE (Auto) | [https://auto.ss.ge](https://auto.ss.ge) | Vehicle classifieds with detailed specs and owner contacts |
| EverCar.ge | [https://evercar.ge](https://evercar.ge) | Vehicle marketplace with import history |

### Transport Authority Data

| Resource | URL | Description |
|---|---|---|
| Service Development Agency (SDA) | [https://sda.gov.ge](https://sda.gov.ge) | Vehicle registration, driving licenses, technical inspection data |
| Tbilisi City Hall Transport | [https://tbilisi.gov.ge](https://tbilisi.gov.ge) | City transport data, parking, traffic |
| Georgian Railway | [https://railway.ge](https://railway.ge) | Rail transport data, schedules |


| Georgian Airports | https://tbilisiairport.com | Flight data, passenger statistics |
|---|---|---|
| MIA Traffic Police | [https://patrol.gov.ge](https://patrol.gov.ge) | Traffic violation data, accident reports |

### Georgian License Plate Format

```
### Georgian plates follow these formats:

- Standard: AA-123-AA (two letters, three numbers, two letters)
- Government: GOV followed by numbers
- Diplomatic: D followed by numbers
- Military: GEO followed by numbers
- Regional codes vary by area

### Note: Georgian plates use Latin letters

```
7. Financial Intelligence & Banking
### National Bank & Financial Regulators

| Resource | URL | Description |
|---|---|---|
| National Bank of Georgia (NBG) | [https://nbg.gov.ge](https://nbg.gov.ge) | Central bank -- exchange rates, banking statistics, supervisory data |
| NBG Exchange Rates | [https://nbg.gov.ge/en/monetary-policy/currency](https://nbg.gov.ge/en/monetary-policy/currency) | Official GEL exchange rates (historical data available) |
| NBG Banking Supervision | [https://nbg.gov.ge/en/supervision](https://nbg.gov.ge/en/supervision) | Bank financial data, supervisory actions, licensed entities |
| NBG AML Sanctions | [https://nbg.gov.ge/en/supervision/aml-cft](https://nbg.gov.ge/en/supervision/aml-cft) | Fines on banks/entities for AML violations (names, amounts, reasons) |
| Financial Monitoring Service | [https://fms.gov.ge](https://fms.gov.ge) | Georgia's FIU -- anti-money laundering intelligence |
| Competition & Consumer Protection | [https://competition.ge](https://competition.ge) | Market concentration, mergers, consumer complaints |

### Banks & Financial Institutions

| Institution | URL | Description |
|---|---|---|
| Bank of Georgia | [https://bankofgeorgia.ge](https://bankofgeorgia.ge) | Largest bank -- financial reports, shareholder data |
| TBC Bank | [https://tbcbank.ge](https://tbcbank.ge) | Second largest bank -- public financial disclosures |
| Liberty Bank | [https://libertybank.ge](https://libertybank.ge) | Retail-focused bank |
| Basis Bank | [https://basisbank.ge](https://basisbank.ge) | Investment bank |
| Credo Bank | [https://credobank.ge](https://credobank.ge) | Regional bank |
| ProCredit Bank | [https://procreditbank.ge](https://procreditbank.ge) | SME-focused bank |
| Finca Bank | [https://finca.ge](https://finca.ge) | Microfinance bank |
| Crystal | [https://crystal.ge](https://crystal.ge) | Microfinance organization |

### Financial OSINT Searches

| Query | What You Find |
|---|---|
| Company name + rs.ge | Tax status, registration, debts |
| Person name + nbg.gov.ge | If they appear in AML sanctions |
| Company + opensanctions.org | International sanctions cross-reference |
| Company + offshore leaks | ICIJ Offshore Leaks Database -- Georgian entities |
| Company + tenders.procurement.gov.ge | Government contracts won |

---
### 50.8 Election & Political Data

### Central Election Commission (CEC)

| Resource | URL | Description |
|---|---|---|
| CEC of Georgia (CESKO) | [https://cesko.ge](https://cesko.ge) | Official election authority -- voter data, results, regulations |
| CEC Election Results | [https://cesko.ge](https://cesko.ge) (results section) | Detailed results by precinct, district, party -- all elections since 2008 |
| CEC Voter Information | [https://cesko.ge/en/amomrchevlebi](https://cesko.ge/en/amomrchevlebi) | Voter registration verification portal |
| CEC Annual Reports | [https://cesko.ge](https://cesko.ge) (publications) | Annual reports with detailed election statistics |

### Political Data Sources

| Resource | URL | Description |
|---|---|---|
| Parliament of Georgia | [https://parliament.ge](https://parliament.ge) | MP profiles, voting records, committee membership, bill tracking |
| Political Party Registry | [https://cesko.ge](https://cesko.ge) (parties section) | Registered political parties, financial disclosures, leadership |
| ISFED (Election Monitoring) | [https://isfed.ge](https://isfed.ge) | Independent election observation reports, violations database |
| Transparency International Georgia | [https://transparency.ge](https://transparency.ge) | Political finance monitoring, corruption investigations |
| Civil Georgia | [https://civil.ge](https://civil.ge) | Independent news with detailed political analysis |
| CRRC Georgia | [https://crrc.ge](https://crrc.ge) | Caucasus Research Resource Center -- public opinion surveys, political polling |
| IPU Georgia | [https://data.ipu.org/parliament/GE](https://data.ipu.org/parliament/GE) | Inter-Parliamentary Union -- Georgian parliament data |
| NDI Georgia | [https://ndi.org/georgia](https://ndi.org/georgia) | National Democratic Institute -- political program data |

2024 Georgian Parliamentary Election Data
| Data Point | Source |
|---|---|
| Official Results | cesko.ge -- full precinct-level data |
| Analysis & Claims | civil.ge/archives/631386 |
| ISFED Reports | isfed.ge -- real-time parallel vote tabulation |
| International Observers | OSCE/ODIHR reports |
| Wikipedia Overview | en.wikipedia.org/wiki/2024_Georgian_parliamentary_election |

---
### 50.9 Maps & Geospatial Intelligence

### Georgian Mapping Services

| Resource | URL | Description |
|---|---|---|
| NSDI Geoportal | [https://nsdi.gov.ge](https://nsdi.gov.ge) | National Spatial Data Infrastructure -- cadastral maps, land parcels, addresses |
| Google Maps (Georgia) | [https://maps.google.com](https://maps.google.com) | Street View coverage in Georgia, satellite imagery, business listings |
| Yandex Maps (Georgia) | [https://yandex.com/maps/?ll=44.78,41.69](https://yandex.com/maps/?ll=44.78,41.69) | Alternative mapping with different satellite imagery and Russian-language data |
| OpenStreetMap Georgia | [https://www.openstreetmap.org/#map=8/42.0/43.5](https://www.openstreetmap.org/#map=8/42.0/43.5) | Community-maintained map with detailed Georgian mapping |
| Wikimapia | [https://wikimapia.org/#lang=en&lat=41.7&lon=44.8](https://wikimapia.org/#lang=en&lat=41.7&lon=44.8) | User-annotated satellite imagery -- useful for identifying unmarked buildings |
| Sentinel Hub (Copernicus) | [https://scihub.copernicus.eu](https://scihub.copernicus.eu) | Free satellite imagery for Georgia (EU Copernicus program) |
| Google Earth | [https://earth.google.com](https://earth.google.com) | Historical satellite imagery for Georgia dating back to early 2000s |
| Mapillary | [https://www.mapillary.com](https://www.mapillary.com) | Street-level imagery crowdsourced -- some Georgian coverage |

### GIS Data Sources

| Resource | URL | Description |
|---|---|---|
| NAPR GIS | [https://nsdi.gov.ge](https://nsdi.gov.ge) | Cadastral data, administrative boundaries, address registry |
| NEA (Environmental Agency) | [https://nea.gov.ge](https://nea.gov.ge) | Environmental monitoring stations, seismic data, weather stations |
| Geostat GIS Data | [https://geostat.ge](https://geostat.ge) | Census maps, demographic distribution by region |
| Tbilisi Municipality GIS | [https://tbilisi.gov.ge](https://tbilisi.gov.ge) | City planning, zoning, infrastructure maps |

### Geolocation Tips for Georgia

```
### Key visual identifiers for geolocating imagery in Georgia:

- Georgian script (mkhedruli) on signs -- unique alphabet
- Mountain terrain (Caucasus) with distinctive tower-houses in Svaneti/Tusheti
- Soviet-era apartment blocks (khrushchyovka) in cities
- Distinctive church architecture (Georgian Orthodox cross-dome style)
- License plates: AA-123-AA format
- Phone prefix: +995
- Currency: GEL (Georgian Lari) -- prices on signs
- Bilingual signs (Georgian + English) in Tbilisi
- Unique tower-houses in mountainous regions (Svaneti, Tusheti, Khevsureti)
```
### 50.10 Media Landscape & News OSINT

### Major Georgian News Sources

| Source | URL | Language | Orientation |
|---|---|---|---|
| Civil Georgia | [https://civil.ge](https://civil.ge) | EN/GE | Independent, pro-Western |
| Interpressnews | [https://interpressnews.ge](https://interpressnews.ge) | GE/EN | News agency |
| Agenda.ge | [https://agenda.ge](https://agenda.ge) | EN | State-adjacent (government-funded) |
| Georgia Today | [https://georgiatoday.ge](https://georgiatoday.ge) | EN | Independent English-language |
| OC Media | [https://oc-media.org](https://oc-media.org) | EN | Independent Caucasus-wide |
| JAM News | [https://jam-news.net](https://jam-news.net) | EN/GE/RU/AZ/AM | Regional news agency |
| Netgazeti | [https://netgazeti.ge](https://netgazeti.ge) | GE | Independent digital |
| Publika | [https://publika.ge](https://publika.ge) | GE | Independent |
| Tabula | [https://tabula.ge](https://tabula.ge) | GE | Liberal |
| Liberali | [https://liberali.ge](https://liberali.ge) | GE | Liberal |
| BMG (Business Media Georgia) | [https://bm.ge](https://bm.ge) | GE/EN | Business news |
| Forbes Georgia | [https://forbes.ge](https://forbes.ge) | GE/EN | Business |
| Commersant.ge | [https://commersant.ge](https://commersant.ge) | GE | Business |

### Television & Radio

| Channel | URL | Notes |
|---|---|---|
| Georgian Public Broadcaster (GPB) | [https://1tv.ge](https://1tv.ge) | State public broadcaster |
| Rustavi 2 | [https://rustavi2.ge](https://rustavi2.ge) | Pro-government (ownership changed) |
| Imedi TV | [https://imedinews.ge](https://imedinews.ge) | Pro-government |
| Mtavari Arkhi | [https://mtavari.tv](https://mtavari.tv) | Opposition-leaning |
| TV Pirveli | [https://tvpirveli.ge](https://tvpirveli.ge) | Independent |
| Formula TV | [https://formulanews.ge](https://formulanews.ge) | Independent |
| Kavkasia TV | [https://kavkasia.ge](https://kavkasia.ge) | Independent |
| Radio Tavisupleba (RFE/RL) | [https://radiotavisupleba.ge](https://radiotavisupleba.ge) | Georgian service of Radio Free Europe |
| Voice of America Georgian | [https://amerikiskhma.com](https://amerikiskhma.com) | VOA Georgian service |

### Investigative Journalism

| Organization | URL | Description |
|---|---|---|
| Transparency International Georgia | [https://transparency.ge](https://transparency.ge) | Anti-corruption investigations, asset monitoring, political finance |
| IDFI | [https://idfi.ge](https://idfi.ge) | Information freedom, public data access, FOI requests |
| Studio Monitor | [https://studiomonitori.ge](https://studiomonitori.ge) | Investigative journalism |
| Batumelebi | [https://batumelebi.netgazeti.ge](https://batumelebi.netgazeti.ge) | Ajara-focused investigations |
| CATAGI | [https://catagi.ge](https://catagi.ge) | Analytical research, power structure investigations |
| Who Owned Georgia (TI) | [https://transparency.ge](https://transparency.ge) | Research on business/media ownership |

---
### 50.11 Data Leaks & Breaches

### Major Georgian Data Breaches

| Incident | Year | Records | Details | Sources |
|---|---|---|---|---|
| 4.9 Million Citizens Leak | 2020 | 4,934,863 | Full names, DOB, gender, ID numbers, phone numbers -- posted on a hacking forum in a 1.04GB Microsoft Access file | ZDNet |
| Ghost Database (Cybernews) | 2025 | ~7 million | Personal records appeared on German cloud provider -- unsecured, then vanished. Full names, DOB, gender, ID numbers, phone numbers | Cybernews |
| CEC Voter Database | 2020 | ~3.5 million | Voter registration data linked to the 2020 leak | OC Media |

### Breach Search Tools (Check Georgian Data)

| Tool | URL | Description | Free/Paid |
|---|---|---|---|
| Have I Been Pwned | [https://haveibeenpwned.com](https://haveibeenpwned.com) | Check email exposure in known breaches | Free |
| LeakCheck | [https://leakcheck.io](https://leakcheck.io) | Search by email, phone, username -- CIS data included | Freemium |
| DeHashed | [https://dehashed.com](https://dehashed.com) | Search breached databases by name, email, phone, IP | Paid |
| IntelX | [https://intelx.io](https://intelx.io) | Intelligence search engine -- pastes, leaks, darknet | Freemium |
| Snusbase | [https://snusbase.com](https://snusbase.com) | Breach database search | Paid |
| BreachDirectory | [https://breachdirectory.org](https://breachdirectory.org) | Partial password hash lookup | Free |
| Hudson Rock Cavalier | [https://cavalier.hudsonrock.com](https://cavalier.hudsonrock.com) | Infostealer data -- compromised credentials | Free tier |
| CheckLeaked | [https://checkleaked.cc](https://checkleaked.cc) | Breach data search including WhatsApp leaks | Paid |
| Leak-Lookup | [https://leak-lookup.com](https://leak-lookup.com) | Multi-database breach search | Paid |
| h8mail | [https://github.com/khast3x/h8mail](https://github.com/khast3x/h8mail) | Email breach hunting command-line tool | Free (OSS) |

### Important Context

```
The 2020 Georgian data leak is one of the largest per-capita data breaches ever:
- 4.9 million records from a country of ~3.7 million living citizens
- Includes deceased citizens' records
- Originally suspected to be a CEC voter database leak
- Data was published on a hacking forum over a weekend
- Georgian authorities investigated but never publicly identified the source
- The 2025 "ghost database" on a German cloud provider may be related

### Impact: Georgian personal data (name, DOB, ID number, phone)

circulates on multiple forums and breach databases.
```
### 50.12 Phone & Telecom OSINT

### Georgian Mobile Operators

| Operator | URL | Market Share | Network |
|---|---|---|---|
| MagtiCom | [https://magticom.ge](https://magticom.ge) | ~40% | 2G/3G/4G/5G -- best coverage |
| Silknet (formerly Geocell) | [https://silknet.com](https://silknet.com) | ~35% | 2G/3G/4G/5G |
| Cellfie (formerly Beeline) | [https://cellfie.ge](https://cellfie.ge) | ~25% | 2G/3G/4G/5G |

### Georgian Phone Number Format

```
### Country code: +995

### Format: +995 XXX XXX XXX (9 digits after country code)


### Mobile prefixes:

- 5XX: Mobile numbers (all operators)
  - 555, 557, 558: MagtiCom
  - 551, 571, 574, 577, 578: Silknet
  - 568, 591, 592, 593, 595, 596, 597, 598, 599: Various

### Landline prefixes:

- 32: Tbilisi
- 422: Batumi (Ajara)
- 431: Kutaisi (Imereti)
- 352: Rustavi
- 370: Gori
- 495: Zugdidi (Samegrelo)

### Emergency: 112 (universal)

### Directory: 114

```
### Phone OSINT Techniques for Georgian Numbers

| Technique | Tool/Method | Description |
|---|---|---|
| Caller ID Lookup | GetContact / TrueCaller | See how the number is saved in other people's phones |
| WhatsApp Check | WhatsApp app | Check if number has WhatsApp -- profile photo, status, last seen |
| Telegram Check | Telegram app | Search by phone number -- username, profile photo, bio |
| Viber Check | Viber app | Very popular in Georgia -- check profile info |
| Google Search | `"+995XXXXXXXXX"` | Find where the number appears online (ads, forums, social media) |
| Facebook Reverse | FB search by phone | Find Facebook account linked to phone number |
| HIBP / LeakCheck | haveibeenpwned.com / leakcheck.io | Check if phone number appears in breach databases |

---
### 50.13 Social Media & Platform OSINT

### Georgian Social Media Landscape

| Platform | Georgian Users (est.) | OSINT Value | Notes |
|---|---|---|---|
| Facebook | ~2.5 million | Very High | THE dominant social platform in Georgia. Many profiles are public with phone numbers visible |
| Instagram | ~1.5 million | High | Popular for ages 18-35, especially in Tbilisi |
| TikTok | ~1 million | Medium | Growing rapidly, especially youth |
| YouTube | ~2 million | High | Georgian content creators, news channels, investigations |
| Telegram | ~1.5 million | Very High | News channels, political groups, leak channels, bots |
| Twitter/X | ~200K | Medium | Used by journalists, politicians, NGOs |
| LinkedIn | ~300K | Medium | Professional profiles, business intelligence |
| VK.com | ~150K | Medium | Russian-speaking Georgians, Abkhazia/South Ossetia |
| OK.ru | ~100K | Low | Older demographic |
| Reddit r/Sakartvelo | ~100K | Low | English-speaking Georgian community |

### Georgian Facebook OSINT

```
Facebook is the #1 OSINT source for Georgian individuals:

### Search techniques:

1. Search by name in Georgian script: "გიორგი" "ბერიძე"
2. Search by phone: Enter +995XXXXXXXXX in Facebook search
3. Search by workplace: "Bank of Georgia" employees
4. Search by school: "Tbilisi State University" graduates
5. Search by location: People in "Tbilisi"
6. Use Facebook Graph Search remnants via Google:
   site:facebook.com "name" "lives in Tbilisi"
7. Check "People You May Know" from a Georgian account
8. Many Georgian users have public profiles with:
   - Phone numbers in About section
   - Workplace history
   - Education history
   - Family relationships
   - Check-in locations
```
### Platform-Specific Tools

| Tool | URL | Description |
|---|---|---|
| Facebook Search | [https://facebook.com/search](https://facebook.com/search) | Native search with filters |
| Who Posted What | [https://whopostedwhat.com](https://whopostedwhat.com) | Facebook keyword search by date |
| Social Searcher | [https://social-searcher.com](https://social-searcher.com) | Free social media search engine |
| SocialBlade | [https://socialblade.com](https://socialblade.com) | Stats for YouTube/Instagram/Twitter accounts |
| Twint | [https://github.com/twintproject/twint](https://github.com/twintproject/twint) | Twitter scraper (archived) |
| Instaloader | [https://github.com/instaloader/instaloader](https://github.com/instaloader/instaloader) | Instagram profile and post downloader |
| TikTok Scraper | [https://github.com/drawrowfly/tiktok-scraper](https://github.com/drawrowfly/tiktok-scraper) | TikTok data extraction |

---
### 50.14 Open Data & Statistics Portals

### National Statistics

| Resource | URL | Description |
|---|---|---|
| GeoStat (National Statistics Office) | [https://geostat.ge](https://geostat.ge) | Official Georgian statistics -- population, economy, trade, crime, health, education |
| GeoStat Database | [https://geostat.ge/ka/modules/categories/858/monatsemta-baza](https://geostat.ge/ka/modules/categories/858/monatsemta-baza) | Downloadable statistical databases |
| Census 2024 | [https://census2024.geostat.ge](https://census2024.geostat.ge) | 2024 Population and Agricultural Census data |
| Census 2014 Results | [https://geostat.ge/en/modules/categories/735/population-census](https://geostat.ge/en/modules/categories/735/population-census) | Previous census results with detailed demographic breakdowns |

### Open Data Portals

| Resource | URL | Description |
|---|---|---|
| data.gov.ge | [https://data.gov.ge](https://data.gov.ge) | Georgian open data portal -- government datasets in machine-readable format |
| OpenData SPA | [https://opendata.spa.ge](https://opendata.spa.ge) | Open procurement data in OCDS format (2011-present) |
| OGP Georgia | [https://ogpgeorgia.gov.ge](https://ogpgeorgia.gov.ge) | Open Government Partnership -- transparency commitments and progress |
| IDFI Public Information Database | [https://idfi.ge](https://idfi.ge) | Public information requests and responses database |
| World Bank Georgia | [https://data.worldbank.org/country/georgia](https://data.worldbank.org/country/georgia) | World Bank development indicators for Georgia |
| UN Data Georgia | [https://data.un.org](https://data.un.org) | UN statistics on Georgia |
| OECD Georgia | [https://data.oecd.org](https://data.oecd.org) (search Georgia) | Economic and social indicators |
| IMF Georgia | [https://imf.org/en/Countries/GEO](https://imf.org/en/Countries/GEO) | IMF economic assessments and data |

### Key Statistical Datasets

| Dataset | URL/Source | Contents |
|---|---|---|
| Population by Region | geostat.ge | Population counts by municipality, age, gender |
| Crime Statistics | geostat.ge | Crimes by type, region, year |
| Economic Data | geostat.ge | GDP, inflation, trade, employment |
| Education Statistics | geostat.ge | Schools, students, universities by region |
| Health Statistics | geostat.ge + ncdc.ge | Disease incidence, mortality, healthcare facilities |
| Tourism Statistics | gnta.ge | Visitor counts by country, spending data |

---
### 50.15 Procurement & Government Spending

### Procurement Platforms

| Resource | URL | Description |
|---|---|---|
| State Procurement Agency (SPA) | [https://procurement.gov.ge](https://procurement.gov.ge) | Georgia's unified electronic procurement system |
| Tenders Portal | [https://tenders.procurement.gov.ge](https://tenders.procurement.gov.ge) | Search and browse all government tenders -- live and historical |
| OpenData SPA (OCDS) | [https://opendata.spa.ge](https://opendata.spa.ge) | All procurement data in Open Contracting Data Standard format since 2011 |
| OCDS API | [https://odapi.spa.ge](https://odapi.spa.ge) | API access to procurement data |
| Global Public Procurement (Georgia) | [https://globalpublicprocurementdata.org/gppd/country_profile/GE](https://globalpublicprocurementdata.org/gppd/country_profile/GE) | Georgia's procurement profile in global context |

### What You Can Find

```
Georgia's procurement system is considered one of the most transparent in Europe/Central Asia:

### Searchable by:

- Contracting organization name
- Supplier/vendor name
- Tender number
- Contract value range
- Procurement type (electronic tender, simplified, consolidated)
- Date range
- CPV code (product/service category)

### Available data:

- Full tender documents
- Bid submissions and bidder names
- Contract awards with prices
- Subcontractor information
- Procurement plans
- Complaint/dispute records
```
### Budget Transparency

| Resource | URL | Description |
|---|---|---|
| Ministry of Finance Budget | [https://mof.gov.ge](https://mof.gov.ge) | State budget documents, execution reports |
| Budget.ge | [https://budget.ge](https://budget.ge) | Interactive budget visualization tool |
| BOOST Georgia (World Bank) | [https://boost.worldbank.org](https://boost.worldbank.org) | Detailed budget expenditure data |
| State Audit Office | [https://sao.ge](https://sao.ge) | Government audit reports, financial compliance |

---
### 50.16 Domain & IP & Network Intelligence

.GE Domain Intelligence
| Resource | URL | Description |
|---|---|---|
| NIC.GE (Registry) | [https://nic.ge](https://nic.ge) | Georgian domain registry -- .ge TLD management |
| NIC.GE WHOIS | [https://nic.ge/en/domains/whois](https://nic.ge/en/domains/whois) | Official WHOIS lookup for .ge domains |
| DomainTools .GE | [https://research.domaintools.com/statistics/tldpedia/ge](https://research.domaintools.com/statistics/tldpedia/ge) | .GE TLD statistics and data |
| SecurityTrails | [https://securitytrails.com](https://securitytrails.com) | DNS history, subdomains, related domains for .ge sites |
| crt.sh | [https://crt.sh](https://crt.sh) | Certificate Transparency logs -- find subdomains of .ge sites |
| DNSDumpster | [https://dnsdumpster.com](https://dnsdumpster.com) | DNS reconnaissance for .ge domains |
| ViewDNS | [https://viewdns.info](https://viewdns.info) | Reverse IP, WHOIS, DNS records, port scanning |
| Shodan | [https://shodan.io](https://shodan.io) | Search for internet-connected devices in Georgia |

### Georgian ASN & Network Data

| Resource | URL | Description |
|---|---|---|
| BGP.he.net Georgia | [https://bgp.he.net/country/GE](https://bgp.he.net/country/GE) | All Georgian AS Numbers and networks (138 ASNs) |
| IPinfo.io Georgia | [https://ipinfo.io/countries/ge](https://ipinfo.io/countries/ge) | Georgian IP ranges, ISPs, geolocation data |
| NirSoft Georgia IPs | [https://nirsoft.net/countryip/ge_total.html](https://nirsoft.net/countryip/ge_total.html) | Complete list of IP blocks allocated to Georgia |
| IPIP.NET Georgia | [https://whois.ipip.net/iso/GE](https://whois.ipip.net/iso/GE) | Georgian ASN directory |

### Major Georgian ISP ASNs

| ISP | ASN | Description |
|---|---|---|
| MagtiCom | AS16010, AS28751 | Largest mobile/ISP |
| Silknet | AS35805 | Second largest, DSL/fiber/mobile |
| Caucasus Online | AS20771 | Major fiber backbone |
| GRENA | AS20545 | Georgian Research and Education Network |
| SIACOM | AS198150 | Business ISP |
| Delta Net | AS56844 | Regional ISP |
| Akhali Kselebi | AS44569 | Regional ISP |
| Caucasus Digital Network | AS57516 | CDN/hosting provider |

### Useful Shodan/Censys Queries for Georgia

```
### Shodan:

- country:GE                          (all devices in Georgia)
- country:GE port:80                  (web servers)
- country:GE port:22                  (SSH servers)
- country:GE port:3389                (RDP servers)
- country:GE port:21                  (FTP servers)
- country:GE screenshot.label:webcam  (webcams)
- country:GE org:"Magticom"           (MagtiCom devices)
- country:GE org:"Silknet"            (Silknet devices)
- country:GE has_screenshot:true      (devices with screenshots)

### Censys:

- location.country_code:GE
- location.city:Tbilisi
```
### 50.17 Education & Academic Databases

### Education Portals

| Resource | URL | Description |
|---|---|---|
| Ministry of Education | [https://mes.gov.ge](https://mes.gov.ge) | Education policy, school data, exam information |
| EMIS (Education Management) | [https://emis.ge](https://emis.ge) | Education Management Information System -- school data, teacher registry |
| Schools Portal | [https://skolebi.emis.ge](https://skolebi.emis.ge) | Search Georgian schools by name, region, type -- interactive map |
| Student Portal | [https://students.emis.ge](https://students.emis.ge) | University student registration portal |
| E-Library (MES) | [https://elibrary.emis.ge](https://elibrary.emis.ge) | Textbooks and educational materials |
| EQE (Quality Enhancement) | [https://eqe.ge](https://eqe.ge) | Accredited programs, institutional evaluations, quality standards |
| National Exam Center | [https://naec.ge](https://naec.ge) | Unified National Exams data, university admission statistics |

### Universities (Major)

| University | URL | OSINT Value |
|---|---|---|
| Tbilisi State University (TSU) | [https://tsu.ge](https://tsu.ge) | Faculty directories, research databases, theses |
| Georgian Technical University (GTU) | [https://gtu.ge](https://gtu.ge) | Faculty, research, publications |
| Ilia State University | [https://iliauni.edu.ge](https://iliauni.edu.ge) | Research, library databases |
| Free University of Tbilisi | [https://freeuni.edu.ge](https://freeuni.edu.ge) | Staff directory, programs |
| Caucasus University | [https://cu.edu.ge](https://cu.edu.ge) | Faculty, publications |
| University of Georgia (UG) | [https://ug.edu.ge](https://ug.edu.ge) | Programs, staff |
| Business and Technology University (BTU) | [https://btu.edu.ge](https://btu.edu.ge) | Tech programs, staff |
| Agricultural University | [https://agruni.edu.ge](https://agruni.edu.ge) | Agricultural research data |

### Academic Search

| Resource | URL | Description |
|---|---|---|
| National Library of Georgia | [https://nplg.gov.ge](https://nplg.gov.ge) | Digital library, historical documents, periodicals archive |
| OpenLibrary.ge | [https://openlibrary.ge](https://openlibrary.ge) | Georgian academic publications, theses, dissertations |
| Ilia University Library | [https://library.iliauni.edu.ge](https://library.iliauni.edu.ge) | Access to scientific databases |
| TSU Digital Library | [https://digitallibrary.tsu.ge](https://digitallibrary.tsu.ge) | Academic theses and dissertations |

---
### 50.18 Health & Medical Databases

### Health Authorities

| Resource | URL | Description |
|---|---|---|
| NCDC (Disease Control) | [https://ncdc.ge](https://ncdc.ge) | National Center for Disease Control -- epidemiological data, disease surveillance, statistics |
| Ministry of Health | [https://moh.gov.ge](https://moh.gov.ge) | Health policy, hospital data, healthcare workforce |
| Health Regulation Agency | [https://hra.gov.ge](https://hra.gov.ge) | Licensed medical facilities, pharmaceutical registry |
| Social Service Agency | [https://ssa.gov.ge](https://ssa.gov.ge) | Social assistance data, disability statistics, healthcare coverage |

### Medical OSINT

| Resource | What You Can Find |
|---|---|
| ncdc.ge/statistics | Disease incidence by region, mortality data, vaccination rates |
| Hospital Registry | Licensed hospitals and clinics with addresses and specializations |
| Pharmacy Registry | Licensed pharmacies across Georgia |
| Doctor Licensing | Medical professional licensing (through Ministry of Health) |
| GeoStat Health Data | [https://geostat.ge](https://geostat.ge) -- health statistics section |

---
### 50.19 NGO & Civil Society & Watchdogs

### Key Georgian NGOs (OSINT Resources)

| Organization | URL | Focus Area | OSINT Value |
|---|---|---|---|
| Transparency International Georgia | [https://transparency.ge](https://transparency.ge) | Anti-corruption, asset monitoring | Asset declarations, political finance, ownership investigations |
| IDFI | [https://idfi.ge](https://idfi.ge) | Information freedom, open data | Public information requests, government transparency monitoring |
| GYLA | [https://gyla.ge](https://gyla.ge) | Legal reform, human rights | Court monitoring, legal analysis, election observation |
| ISFED | [https://isfed.ge](https://isfed.ge) | Election monitoring | Real-time election monitoring, violations database |
| TI Georgia - Who Owns Georgia | [https://transparency.ge](https://transparency.ge) | Media ownership | Detailed investigations into who controls Georgian media |
| Social Justice Center | [https://socialjustice.org.ge](https://socialjustice.org.ge) | Social rights, economic justice | Labor, housing, economic data |
| Media Development Foundation | [https://mdfgeorgia.ge](https://mdfgeorgia.ge) | Media freedom | Media monitoring, financial transparency of media |
| CRRC Georgia | [https://crrc.ge](https://crrc.ge) | Research, polling | Public opinion surveys, research datasets |
| Partnership for Human Rights | [https://phr.ge](https://phr.ge) | Human rights monitoring | Human rights reports |
| Democracy Research Institute | [https://democracyresearch.ge](https://democracyresearch.ge) | Democracy monitoring | Democratic indicators, political analysis |
| CATAGI | [https://catagi.ge](https://catagi.ge) | Power structure analysis | Investigations into informal power networks |

---
### 50.20 Fact-Checking & Disinformation Tracking

### Fact-Checking Organizations

| Organization | URL | Description |
|---|---|---|
| Myth Detector | [https://mythdetector.com](https://mythdetector.com) | Media Development Foundation's fact-checking portal -- disinformation database |
| FactCheck.ge | [https://factcheck.ge](https://factcheck.ge) | GRASS initiative -- rates accuracy of public officials' statements |
| GeoFacts | [https://geofacts.ge](https://geofacts.ge) | Fact-checking platform |
| MythDetector Database | [https://mythdetector.com/en/factchecker-db/](https://mythdetector.com/en/factchecker-db/) | Searchable database of fact-checked claims |

### Disinformation Monitoring

| Resource | URL | Description |
|---|---|---|
| ISFED Social Media Monitoring | [https://isfed.ge](https://isfed.ge) | Monitors Russian information operations in Georgian social media |
| MDF Annual Reports | [https://mdfgeorgia.ge](https://mdfgeorgia.ge) | Detailed media monitoring and disinformation analysis |
| DFRLab (Atlantic Council) | [https://atlanticcouncil.org/programs/digital-forensic-research-lab/](https://atlanticcouncil.org/programs/digital-forensic-research-lab/) | Digital forensic analysis including Georgia-related disinformation |
| EU vs Disinfo | [https://euvsdisinfo.eu](https://euvsdisinfo.eu) | EU database of pro-Kremlin disinformation -- includes Georgia |
| Hamilton 2.0 (Alliance for Securing Democracy) | [https://securingdemocracy.gmfus.org/hamilton-dashboard/](https://securingdemocracy.gmfus.org/hamilton-dashboard/) | Tracks Russian/Chinese state media narratives on Georgia |

---
### 50.21 Archives & Historical Databases

### National Archives & Libraries

| Resource | URL | Description |
|---|---|---|
| National Archives of Georgia | [https://archive.gov.ge](https://archive.gov.ge) | Historical documents, electronic catalogues, digitized materials, reading room reservation |
| National Archives Electronic Catalogues | [https://archive.gov.ge](https://archive.gov.ge) (catalogues section) | Searchable index of archived documents |
| National Library of Georgia | [https://nplg.gov.ge](https://nplg.gov.ge) | National library -- digital collections, rare books, periodicals archive |
| National Parliamentary Library | [https://nplg.gov.ge](https://nplg.gov.ge) | Legislative history, parliamentary debates archive |
| Internet Archive (Georgia) | [https://archive.org/details/1989-tbilisi-1_202408](https://archive.org/details/1989-tbilisi-1_202408) | Archive of Sakartvelo collection on Internet Archive |
| Wayback Machine (.ge sites) | [https://web.archive.org/web/*/*.ge](https://web.archive.org/web/*/*.ge) | Cached versions of Georgian websites -- historical snapshots |

### Historical & Cultural Databases

| Resource | URL | Description |
|---|---|---|
| Georgian National Museum | [https://museum.ge](https://museum.ge) | Museum collections, archaeological data, cultural artifacts |
| National Agency for Cultural Heritage | [https://heritage.gov.ge](https://heritage.gov.ge) | Cultural heritage monuments, protected sites database |
| Georgian Cinema Database | [https://georgiancinema.ge](https://georgiancinema.ge) | Georgian film history, directors, actors |
| OpenLibrary.ge | [https://openlibrary.ge](https://openlibrary.ge) | Academic publications, dissertations, historical texts |

### Archival OSINT Tips

```
### Wayback Machine queries for Georgian sites:

- https://web.archive.org/web/*/napr.gov.ge     (old property data)
- https://web.archive.org/web/*/rs.ge            (old tax data)
- https://web.archive.org/web/*/cesko.ge         (old election data)
- https://web.archive.org/web/*/parliament.ge    (old MP profiles)

Use these to find information that may have been removed from current sites.
```
### 50.22 Auctions & Seized Property

### Government Auction Platforms

| Resource | URL | Description |
|---|---|---|
| eAuction.ge | [https://eauction.ge](https://eauction.ge) | Official state property auction platform -- seized assets, government surplus, real estate, vehicles |
| Gavel.ge | [https://gavel.ge](https://gavel.ge) | Aggregates auctions from Livo, eAuction.ge, and Tbilisi Municipality (11,000+ lots) |
| Livo Auctions | [https://livo.ge](https://livo.ge) (auction section) | Real estate auctions with 3D tours |
| Tbilisi Municipality Auctions | [https://tbilisi.gov.ge](https://tbilisi.gov.ge) | Municipal property sales |
| LEPL National Bureau of Enforcement | [https://nbe.gov.ge](https://nbe.gov.ge) | Enforcement/seized property auctions |

### What You Can Find in Auction Data

```
eAuction.ge reveals:
- Seized properties of individuals/companies (with owner names)
- Government surplus equipment
- Bank foreclosure properties
- Court-ordered asset sales
- Detailed property descriptions with photos
- Starting prices and bid history
- Buyer information (in completed auctions)

### OSINT value: Shows who lost property and why (debt, crime, tax evasion)

```
### 50.23 Job Markets & Classifieds

### Job Portals

| Portal | URL | Description |
|---|---|---|
| Jobs.ge | [https://jobs.ge](https://jobs.ge) | Georgia's largest job board -- employer names, salaries, positions |
| HR.ge | [https://hr.ge](https://hr.ge) | Professional job portal with CV database |
| LinkedIn (Georgia) | [https://linkedin.com](https://linkedin.com) (filter by Georgia) | Professional networking, company pages |
| Myjobs.ge | [https://myjobs.ge](https://myjobs.ge) | Additional job listings |
| CV.ge | [https://cv.ge](https://cv.ge) | Resume/CV platform |

### Classifieds (Multi-Category)

| Portal | URL | Description |
|---|---|---|
| SS.GE | [https://ss.ge](https://ss.ge) | Georgia's BIGGEST classifieds -- real estate, vehicles, electronics, jobs, services (OSINT goldmine) |
| MyMarket.ge | [https://mymarket.ge](https://mymarket.ge) | Second-hand goods marketplace -- seller profiles, locations, phone numbers |
| MyAuto.ge | [https://myauto.ge](https://myauto.ge) | Vehicle classifieds |
| MyHome.ge | [https://myhome.ge](https://myhome.ge) | Real estate classifieds |
| MyParts.ge | [https://myparts.ge](https://myparts.ge) | Auto parts marketplace |
| Extra.ge | [https://extra.ge](https://extra.ge) | General classifieds and marketplace |
| Makler.ge | [https://makler.ge](https://makler.ge) | Service provider marketplace |

### OSINT Value of Classifieds

```
### Georgian classifieds often reveal:

- Real phone numbers of sellers
- Physical addresses
- Photos of properties/vehicles (with metadata)
- Business names and registration details
- Price history (for repeated listings)
- Location data from listings

SS.GE in particular is a treasure trove:
- Most Georgians have used SS.GE at some point
- Old listings are often still accessible
- Google cache: site:ss.ge "phone number" "name"
```
### 50.24 Asset Declarations & Anti-Corruption

### Public Official Asset Declarations

| Resource | URL | Description |
|---|---|---|
| Civil Service Bureau Declarations | [https://csb.gov.ge](https://csb.gov.ge) | Asset declarations of public officials -- income, property, securities, debts |
| Anti-Corruption Bureau | [https://acb.gov.ge](https://acb.gov.ge) | Asset declaration monitoring department |
| OpenSanctions (Georgia Declarations) | [https://opensanctions.org/datasets/ge_declarations/](https://opensanctions.org/datasets/ge_declarations/) | Structured data from Georgian official asset declarations |
| Transparency International Georgia | [https://transparency.ge](https://transparency.ge) | Analysis and monitoring of official asset declarations |

### What's in Asset Declarations

```
### Georgian public officials must declare annually:

- Real estate (addresses, values)
- Vehicles (make, model, year)
- Securities (company shares, stock holdings)
- Bank deposits and cash
- Income sources (salary, business income, gifts)
- Debts and liabilities
- Family members' assets
- Gifts over 1,000 GEL

### Available for: MPs, ministers, judges, prosecutors, mayors, high-ranking

civil servants, and their family members.

OpenSanctions.org provides this data in machine-readable format.
```
### 50.25 Georgian Wordlists & Password Tools

### Georgian Language Wordlists

| Resource | Description | Use Case |
|---|---|---|
| Georgian Wordlist (geowordlist.txt) | 11.9 MB dictionary of Georgian words and common passwords | Password cracking, security auditing |
| make_wordlist.py | Python script for generating custom Georgian wordlists from rules | Custom wordlist generation for Georgian targets |
| Georgian Keyboard Layout Patterns | Common keyboard patterns in Georgian layout | Password generation |
| Georgian Name Combinations | First name + last name + year patterns common in Georgia | Targeted password lists |

### Common Georgian Password Patterns

```
### Most common Georgian password structures:

- Name + birth year: giorgi1990, nino1985
- Georgian words in Latin: tbilisi, sakartvelo, gamarjoba
- Phone number as password: 555123456, 577987654
- ID number as password: 01001012345
- Georgian words in Georgian script: პაროლი, თბილისი
- Common substitutions: @ for a, 3 for e, 0 for o
- Name + 123: giorgi123, nino123
- Football teams: dinamo, torpedo
- Georgian places: batumi, kutaisi, borjomi

### Password cracking tools:

- Hashcat: hashcat -m 0 hash.txt geowordlist.txt
- John the Ripper: john --wordlist=geowordlist.txt hash.txt
```
### Generating Georgian Wordlists

```bash
# Using make_wordlist.py (from uploaded tools)
python3 make_wordlist.py --language georgian --output geo_custom.txt

# Using crunch for Georgian patterns
crunch 8 12 abcdefghijklmnopqrstuvwxyz0123456789 -t @@@@%%%% -o patterns.txt

# Combining Georgian names with years
for name in giorgi nino dato mari luka ana; do
  for year in $(seq 1980 2005); do
    echo "${name}${year}"
  done
done > georgian_names_years.txt
```
### 50.26 Telegram OSINT for Georgia

### Georgian News & Political Channels

| Channel | Handle | Description |
|---|---|---|
| Formula News | @formulanewstv | Independent TV news channel |
| Mtavari Arkhi | @mtavariarkhi | Opposition-leaning TV channel |
| Netgazeti | @netgazeti | Independent online news |
| Tabula | @tabormagazine | Liberal news/analysis |
| Civil Georgia | @CivilGe | Independent English-language news |
| Radio Tavisupleba | @radiotavisupleba | RFE/RL Georgian service |
| Various Political Groups | Search "Georgia politics" | Political discussion groups |

### OSINT Telegram Bots (Work with Georgian Data)

| Bot | Handle | Description | Free/Paid |
|---|---|---|---|
| Eye of God | @EyeOfGodBot | Person search by phone, name, car -- CIS + Georgia data | Paid |
| Quick OSINT | @QuickOSINT_bot | Multi-database person lookup | Paid |
| GetContact Bot | @getcontact_bot | Caller ID lookup | Freemium |
| Phone Number Search | @PhoneNumber_SearchBot | Phone number OSINT | Freemium |
| Email Search | @mailsearchbot | Email breach lookup | Freemium |
| Leak OSINT | @leak_osint_bot | Breach data search | Paid |
| Search4Faces | @search4aboringface_bot | Facial recognition search | Freemium |

### Russian-Language OSINT Channels (Relevant to Georgia)

| Channel | Handle | Description |
|---|---|---|
| overbafer1 | @overbafer1 | OSINT tools and techniques |
| overlamer1 | @overlamer1 | Hacking and security |
| Social Engineering | @Social_engineering | Social engineering techniques |
| Cyberbezopasno | @cyberbezopasno | Cybersecurity news |

### Telegram OSINT Techniques for Georgia

```
1. Search by phone number: Enter +995XXXXXXXXX in Telegram search
   - Find if the person has Telegram
   - See their username, profile photo, bio

2. Search Georgian groups/channels:
   - Use tgstat.com to search for Georgian channels
   - Search for Georgian keywords in channel search

3. Forward message analysis:
   - Check "forwarded from" headers to trace information flow

4. Telegram Scraping Tools:
   - telegram-scraper (GitHub)
   - Telethon (Python library)
   - tg-archive for archiving channels
```
### 50.27 Investigation Frameworks & Communities

### OSINT Frameworks with Georgian Coverage

| Framework | URL | Description |
|---|---|---|
| OSINT Framework | [https://osintframework.com](https://osintframework.com) | Web-based OSINT tool directory |
| Bellingcat OSINT Toolkit | [https://docs.google.com/spreadsheets/d/18rtqh8EG2q1xBo2cLNyhIDuK9jrPGwYr9DI2UncoqJQ](https://docs.google.com/spreadsheets/d/18rtqh8EG2q1xBo2cLNyhIDuK9jrPGwYr9DI2UncoqJQ) | Comprehensive OSINT tool spreadsheet |
| UNISHKA Georgia OSINT Guide | [https://unishka.substack.com/p/osint-of-georgia](https://unishka.substack.com/p/osint-of-georgia) | Dedicated Georgia OSINT methodology guide |
| Start.me OSINT Pages | [https://start.me](https://start.me) | Curated OSINT resource collections |
| Awesome OSINT (GitHub) | [https://github.com/jivoi/awesome-osint](https://github.com/jivoi/awesome-osint) | Curated list of OSINT tools |
| OSINT Dojo | [https://www.osintdojo.com](https://www.osintdojo.com) | OSINT learning platform |

### Investigative Communities

| Community | Platform | Description |
|---|---|---|
| Bellingcat | [https://bellingcat.com](https://bellingcat.com) | Open source investigations -- has covered Georgia-related stories |
| OCCRP | [https://occrp.org](https://occrp.org) | Organized Crime and Corruption Reporting Project -- Georgia investigations |
| ICIJ | [https://icij.org](https://icij.org) | International investigative journalism -- Pandora Papers, Panama Papers (Georgian entries) |
| GIJN | [https://gijn.org](https://gijn.org) | Global Investigative Journalism Network |

### ICIJ Databases (Georgian Entries)

| Database | URL | Description |
|---|---|---|
| Offshore Leaks Database | [https://offshoreleaks.icij.org](https://offshoreleaks.icij.org) | Search for Georgian individuals/companies in Panama Papers, Paradise Papers, Pandora Papers |
| ICIJ Data | [https://icij.org/investigations/](https://icij.org/investigations/) | Full investigation archives with searchable databases |

---
### 50.28 Google Dorking for Georgia

### Government & Official Sites

```
site:gov.ge filetype:pdf
site:gov.ge filetype:xlsx
site:gov.ge filetype:docx
site:gov.ge filetype:csv
site:napr.gov.ge
site:rs.ge
site:parliament.ge
site:cesko.ge
site:geostat.ge filetype:xlsx
site:matsne.gov.ge
```
### Personal Information Discovery

```
"+995" site:facebook.com
"+995" site:linkedin.com
"@gmail.com" site:gov.ge
"@yahoo.com" site:.ge
intext:"+995" filetype:xlsx
intext:"+995" filetype:csv
allintext:"tbilisi" "phone" "email" filetype:xlsx
"პირადი ნომერი" filetype:pdf site:gov.ge
"საიდენტიფიკაციო" filetype:xlsx
```
### Business & Corporate Intelligence

```
site:enreg.reestri.gov.ge
site:rs.ge "taxpayer"
"შპს" filetype:pdf site:gov.ge
"სს" OR "შპს" "+995" filetype:xlsx
site:tenders.procurement.gov.ge
"ხელშეკრულება" filetype:pdf site:gov.ge
```
### Credential & Sensitive Data Discovery

```
allintext:"@gmail.com" "password" filetype:xlsx site:.ge
allintext:"username" "password" filetype:csv site:.ge
inurl:admin site:.ge
inurl:login site:.ge
inurl:wp-admin site:.ge
inurl:cpanel site:.ge
intitle:"index of" site:.ge
intitle:"index of" "parent directory" site:.ge
inurl:".env" site:.ge
inurl:"wp-config.php" site:.ge
site:.ge filetype:sql
site:.ge filetype:log
site:.ge filetype:bak
```
### Educational & Academic

```
site:tsu.ge filetype:pdf
site:gtu.ge filetype:pdf
site:iliauni.edu.ge filetype:pdf
site:emis.ge
"student" OR "სტუდენტი" filetype:xlsx site:.ge
"dissertation" OR "სადისერტაციო" site:.ge filetype:pdf
```
### Media & Social

```
site:civil.ge "investigation"
site:transparency.ge "report"
site:idfi.ge "public information"
site:interpressnews.ge
"tbilisi" OR "თბილისი" site:instagram.com
"sakartvelo" site:youtube.com
```
### Camera & IoT Discovery

```
inurl:/view/index.shtml site:.ge
inurl:/live/cam.html site:.ge
intitle:"webcam" site:.ge
inurl:"view/viewer_index.shtml" country:ge
inurl:/mjpg/video.mjpg site:.ge
"Server: yawcam" site:.ge
```
### Infrastructure & Network

```
site:.ge inurl:phpMyAdmin
site:.ge intitle:"Apache2 Ubuntu Default Page"
site:.ge intitle:"Welcome to nginx"
site:.ge "powered by WordPress"
site:.ge "Joomla"
"*.ge" site:crt.sh
"*.gov.ge" site:shodan.io
```
### Advanced Combinations

```
# Find exposed databases
site:.ge filetype:sql "INSERT INTO" "VALUES"

# Find configuration files
site:.ge filetype:xml "password"
site:.ge filetype:ini "password"
site:.ge filetype:conf "server"

# Find exposed directories
intitle:"index of" "parent directory" site:.ge filetype:pdf

# Find email lists
"@" filetype:csv site:.ge
"email" "phone" filetype:xlsx site:.ge

# Find Georgian government reports with data
site:gov.ge "report" "2024" filetype:pdf
site:gov.ge "statistics" filetype:xlsx
```
### Appendix A: Georgian Alphabet Quick Reference

```
### Georgian script (Mkhedruli) -- 33 letters:


ა ბ გ დ ე ვ ზ თ ი კ ლ მ ნ ო პ ჟ რ ს ტ უ ფ ქ ღ ყ შ ჩ ც ძ წ ჭ ხ ჯ ჰ

### Transliteration:

a b g d e v z t' i k l m n o p zh r s t u p' k' gh q' sh ch ts dz ts' ch' kh j h

### Useful for searching Georgian names in Latin script when researching

Georgian individuals in international databases.
```
### Appendix B: OSINT Investigation Workflow for Georgia

```
STEP 1: IDENTIFY THE TARGET
  - Name (Georgian + Latin spelling)
  - Personal ID number (11 digits)
  - Phone number (+995 XXX XXX XXX)
  - Email address
  - Date of birth
  - Company name/ID

### STEP 2: GOVERNMENT DATABASES

  [ ] NAPR (napr.gov.ge) -- property, business, civil registry
  [ ] RS (rs.ge) -- tax status, business activity
  [ ] Entrepreneur Registry -- company details, directors
  [ ] ecd.court.ge -- court cases
  [ ] cesko.ge -- voter registration
  [ ] csb.gov.ge -- if public official, check asset declarations

### STEP 3: SOCIAL MEDIA & ONLINE PRESENCE

  [ ] Facebook (Georgian name + Latin name)
  [ ] Instagram
  [ ] LinkedIn
  [ ] Telegram (search by phone number)
  [ ] Google search: "name" "+995" / "name" "tbilisi"
  [ ] SS.GE (classifieds -- may have phone number, property listings)

### STEP 4: FINANCIAL & BUSINESS

  [ ] enreg.reestri.gov.ge -- company ownership/directorship
  [ ] tenders.procurement.gov.ge -- government contracts
  [ ] nbg.gov.ge -- banking/AML sanctions
  [ ] offshoreleaks.icij.org -- offshore connections
  [ ] opensanctions.org -- sanctions cross-reference

### STEP 5: BREACH & LEAK DATA

  [ ] haveibeenpwned.com -- email breaches
  [ ] leakcheck.io -- email/phone breach search
  [ ] dehashed.com -- comprehensive breach search
  [ ] Known Georgian data leaks (4.9M citizen leak)

### STEP 6: PHONE OSINT

  [ ] GetContact -- caller ID lookup
  [ ] TrueCaller -- caller ID
  [ ] WhatsApp profile check
  [ ] Viber profile check
  [ ] Telegram profile check
  [ ] Google: "+995XXXXXXXXX"

### STEP 7: PROPERTY & VEHICLES

  [ ] NAPR property registry
  [ ] nsdi.gov.ge -- cadastral map lookup
  [ ] SS.GE / MyHome.ge -- property listings
  [ ] MyAuto.ge -- vehicle listings
  [ ] eauction.ge -- seized property

### STEP 8: ADVANCED

  [ ] Google dorking: site:.ge "target name"
  [ ] Wayback Machine: web.archive.org/web/*/.ge
  [ ] Shodan: country:GE
  [ ] Certificate Transparency: crt.sh
  [ ] OSINT Telegram bots (Eye of God, Quick OSINT)
```
### Appendix C: Key URLs Quick Reference

| Category | URL |
|---|---|
| E-Government Portal | [https://my.gov.ge](https://my.gov.ge) |
| Property Registry | [https://napr.gov.ge](https://napr.gov.ge) |
| Business Registry | [https://enreg.reestri.gov.ge](https://enreg.reestri.gov.ge) |
| Tax Authority | [https://rs.ge](https://rs.ge) |
| Court Decisions | [https://ecd.court.ge](https://ecd.court.ge) |
| Legislation | [https://matsne.gov.ge](https://matsne.gov.ge) |
| Elections | [https://cesko.ge](https://cesko.ge) |
| Statistics | [https://geostat.ge](https://geostat.ge) |
| Procurement | [https://tenders.procurement.gov.ge](https://tenders.procurement.gov.ge) |
| Open Data | [https://data.gov.ge](https://data.gov.ge) |
| Domain WHOIS | [https://nic.ge/en/domains/whois](https://nic.ge/en/domains/whois) |
| Geoportal | [https://nsdi.gov.ge](https://nsdi.gov.ge) |
| Education | [https://emis.ge](https://emis.ge) |
| Health | [https://ncdc.ge](https://ncdc.ge) |
| National Archives | [https://archive.gov.ge](https://archive.gov.ge) |
| National Library | [https://nplg.gov.ge](https://nplg.gov.ge) |
| Classifieds | [https://ss.ge](https://ss.ge) |
| Vehicles | [https://myauto.ge](https://myauto.ge) |
| Real Estate | [https://myhome.ge](https://myhome.ge) |
| Auctions | [https://eauction.ge](https://eauction.ge) |
| Jobs | [https://jobs.ge](https://jobs.ge) |
| Asset Declarations | [https://csb.gov.ge](https://csb.gov.ge) |
| Fact-Checking | [https://factcheck.ge](https://factcheck.ge) |
| Anti-Disinfo | [https://mythdetector.com](https://mythdetector.com) |
| Investigative | [https://transparency.ge](https://transparency.ge) |
| Open Data Procurement | [https://opendata.spa.ge](https://opendata.spa.ge) |

---
![OSINT Arsenal Logo](https://raw.githubusercontent.com/rawfilejson/awesome-osint-arsenal/main/assets/logo.jpg)
🔍 AWESOME OSINT ARSENAL
The Ultimate Open-Source Intelligence Toolkit

---



</details>

---
## 🤝 Contributing & Issues

Found a dead link? Tool that should be here? Just open an issue or PR.

- **Found something broken** → [open an issue](https://github.com/rawfilejson/awesome-osint-arsenal/issues/new)
- **Want to add a tool** → fork, add it to the right section in alphabetical order, PR
- **No time to PR?** → leave the tool name + URL in an issue, I'll add it

Verify install commands on a fresh Kali VM before submitting.

---

## ⚖️ Legal Disclaimer

This repository is provided for **educational and authorized security research purposes only**.

**✅ Legal uses:**
- Security research on systems you own
- Penetration testing with written authorization
- OSINT for journalism or missing persons investigations
- Bug bounty programs with defined scope
- Security awareness training

**❌ Illegal uses (never do these):**
- Unauthorized access to systems or accounts
- Stalking or harassment
- Credential theft
- DDoS or attacks on systems you don't own
- Privacy violations

**Laws that apply:** GDPR (EU), CCPA (California), CFAA (US), Computer Misuse Act (UK), and your local equivalents. **Know your laws before you act.**

> The maintainers of this repository are **not responsible** for any misuse of information or tools listed here.

---

<div align="center">

<br/>

*Built for the OSINT and security research community.*

*Knowledge is power — use it responsibly.*

<a href="https://www.buymeacoffee.com/rawfilejson" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me a Coffee" style="height: 60px !important;width: 217px !important;" ></a>

<br/>

**⭐ Star this repo if you found it useful!**

[![GitHub stars](https://img.shields.io/github/stars/rawfilejson/awesome-osint-arsenal?style=social)](https://github.com/rawfilejson/awesome-osint-arsenal/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/rawfilejson/awesome-osint-arsenal?style=social)](https://github.com/rawfilejson/awesome-osint-arsenal/network/members)

<br/>

</div>
