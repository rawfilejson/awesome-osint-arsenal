#!/usr/bin/env bash
# ===================================================================
# Awesome OSINT Arsenal — Master Orchestrator
# Part of awesome-osint-arsenal v2.1 (Unified Production Edition)
# Runs each category installer sequentially with error handling.
# Best support: Kali / Debian / Ubuntu / Parrot.
# Partial: Arch / Manjaro / Fedora / RHEL.
# ===================================================================
set -uo pipefail

# Maintain color scheme and logging alignment with sub-modules
RED="\033[0;31m"
GRN="\033[0;32m"
YLW="\033[1;33m"
BLU="\033[0;34m"
CYN="\033[0;36m"
NC="\033[0m"

LOGFILE="${LOGFILE:-$HOME/osint-install-errors.log}"

# Core Environment Guard
if [ "$EUID" -ne 0 ]; then
	echo -e "${RED}[✗] error:${NC} This master orchestrator requires elevated privileges."
	echo "Please run as root: sudo bash $0"
	exit 1
fi

# Switch to the script's execution directory to safely resolve relative script paths
cd "$(dirname "$0")"

# Target Sub-modules 
INSTALLERS=(
	"osint.sh"
	"redteam.sh"
	"blueteam.sh"
	"forensics.sh"
	"hardware.sh"
	"labs.sh"
	"extras.sh"
)

# Initialize/Wipe Master Error Log
: >"$LOGFILE"

# Operational Metrics Tracker
START_TIME=$SECONDS
PASSED_MODULES=0
FAILED_MODULES=0
declare -ga UNABLE_TO_LOCATE=()

echo -e "${CYN}[i]${NC} Initializing Master Deployment Engine..."
echo -e "${CYN}[i]${NC} Runtime failures will be aggregated inside: $LOGFILE"

for inst in "${INSTALLERS[@]}"; do
	echo
	echo -e "${BLU}=======================================================${NC}"
	echo -e " 🚀 Launching Deployment Segment: ${CYN}$inst${NC}"
	echo -e "${BLU}=======================================================${NC}"
  
	# Defensive File Verification Hook
	if [ ! -f "$inst" ]; then
		echo -e "${YLW}[~] Skipping:${NC} Module script '$inst' not found in workspace directory."
		UNABLE_TO_LOCATE+=("$inst")
		FAILED_MODULES=$((FAILED_MODULES + 1))
		echo "ORCHESTRATOR ERROR: File not found: $inst" >> "$LOGFILE"
		continue
	fi

	# Explicitly grant executable permissions to prevent permission denial traps
	chmod +x "$inst"

	# Execute subshell layer. Exporting LOGFILE ensures sub-modules write to the same path.
	export LOGFILE
	if bash "$inst"; then
		PASSED_MODULES=$((PASSED_MODULES + 1))
	else
		echo -e "${RED}[✗] Failure warning:${NC} Module $inst returned a non-zero exit status."
		FAILED_MODULES=$((FAILED_MODULES + 1))
		echo "ORCHESTRATOR ERROR: Sub-module execution failure status returned from: $inst" >> "$LOGFILE"
	fi
done

# Calculate execution duration metrics
ELAPSED_DURATION=$((SECONDS - START_TIME))
MINUTES=$((ELAPSED_DURATION / 60))
SECONDS_REM=$((ELAPSED_DURATION % 60))

# ===================================================================
# Master Compilation Dashboard
# ===================================================================
echo
echo -e "${CYN}=======================================================${NC}"
echo -e " 🎉 GRAND ARCHITECTURE DEPLOYMENT COMPLETE"
echo -e "${CYN}=======================================================${NC}"
echo -e "  Total Active Script Modules Checked : $((PASSED_MODULES + FAILED_MODULES))"
echo -e "  Successful Module Deployments       : ${GRN}$PASSED_MODULES${NC}"
echo -e "  Unresolved/Failed Components        : ${RED}$FAILED_MODULES${NC}"
echo -e "  Total Provisioning Runtime          : ${YLW}${MINUTES}m ${SECONDS_REM}s${NC}"
echo -e "${CYN}=======================================================${NC}"

if [ ${#UNABLE_TO_LOCATE[@]} -gt 0 ]; then
	echo -e "${YLW}[!] Missing Components Reminder:${NC} ${UNABLE_TO_LOCATE[*]}"
	echo "Ensure all complementary module scripts are checked out into this workspace directory."
fi

if [ "$FAILED_MODULES" -gt 0 ]; then
	echo -e "${RED}[✗] Some installation routines requirements encountered friction.${NC}"
	echo -e "    Review explicit error codes and stack failures in: ${YLW}$LOGFILE${NC}"
else
	echo -e "${GRN}[✓] Core orchestration layers initialized clean with zero root exceptions.${NC}"
fi