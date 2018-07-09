#!/usr/bin/env bash
#
# helpers.sh
#
# Helper functions for Travis build scripts.
#

# force strict error checking
set -o errexit
set -o pipefail

# enable extended globbing syntax
shopt -s extglob

CYAN='\033[0;36m'
MAGENTA='\033[1;35m'
RED='\033[1;31m'
YELLOW='\033[0;33m'
NC='\033[0m' # no color

# log command before running and add a blank line
run () {
  ohai "$*"
  eval "$*"
  local retval=$?
  echo
  return $retval
}

ohai () {
  echo -e "${MAGENTA}>>>${NC} $*"
}

onoe () {
  echo -e "${YELLOW}>>> $* ${NC}"
  exit 0
}

odie () {
  echo -e "${RED}!!! $* !!!${NC}"
  exit 1
}

# print args as a cyan header
header () {
  echo
  echo -e "${CYAN}$*${NC}"
  echo
}
