#!/usr/bin/env bash
#
# helpers.sh
#
# Helper functions for Travis build scripts.
#

# force strict error checking
set -o errexit
set -o pipefail

CYAN='\033[0;36m'
MAGENTA='\033[1;35m'
NC='\033[0m' # no color

# log command before running and add a blank line
run () {
  echo -e "${MAGENTA}>>>${NC} $*"
  command "$@"
  local retval=$?
  echo
  return $retval
}

# print args as a cyan header
header () {
  echo
  echo -e "${CYAN}$*${NC}"
  echo
}

brew_install () {
  local pkg=$1
  if brew list -1 | grep -q "^${pkg}\$"; then
    brew_upgrade "$pkg"
  else
    run brew install "$pkg"
  fi
}

brew_upgrade () {
  local pkg=$1
  if ! brew outdated "$pkg"; then
    run brew upgrade "$pkg"
  fi
}

# disallow unbound variables during build step
enter_build_step () {
  set -o nounset
}

# allow unbound variables so Travis doesn't get mad at us
exit_build_step () {
  set +o nounset
}
