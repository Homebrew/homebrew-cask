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
  echo -e "${MAGENTA}>>>${NC} $*"
  eval "$*"
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
  # if pkg is already installed, upgrade it
  if brew list -1 | grep -q "^${pkg}\$"; then
    brew_upgrade "$pkg"
  else
    run brew install "$pkg"
  fi
}

brew_upgrade () {
  local pkg=$1
  if ! brew outdated "$pkg"; then
    # allow upgrade to fail since we don't strictly need it
    run brew upgrade "$pkg" || true
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

files_modified_outside_casks () {
  git diff --name-only "${TRAVIS_COMMIT_RANGE}" -- !(Casks)
}

# return 0 if we can't skip running the test suite
must_run_tests () {
  if [[ -z "${FILES_MODIFIED_OUTSIDE_CASKS+defined}" ]]; then
    FILES_MODIFIED_OUTSIDE_CASKS="$(files_modified_outside_casks)"
    export FILES_MODIFIED_OUTSIDE_CASKS
  fi
  [[ -n "${FILES_MODIFIED_OUTSIDE_CASKS}" ]]
}
