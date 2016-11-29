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

# print args as a cyan header
header () {
  echo
  echo -e "${CYAN}$*${NC}"
  echo
}

modified_cask_files () {
  if [[ -z "${MODIFIED_CASK_FILES+defined}" ]]; then
    MODIFIED_CASK_FILES="$(git diff --name-only --diff-filter=AM "${TRAVIS_COMMIT_RANGE}" -- Casks/*.rb)"
    export MODIFIED_CASK_FILES
  fi
  echo "${MODIFIED_CASK_FILES}"
}

any_casks_modified () {
  [[ -n "$(modified_cask_files)" ]]
}
