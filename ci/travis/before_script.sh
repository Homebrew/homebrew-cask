#!/usr/bin/env bash
#
# before_script.sh
#
# This file is meant to be sourced during the `before_script` phase of the
# Travis build. Do not attempt to source or run it locally.
#
# shellcheck disable=SC1090
. "${TRAVIS_BUILD_DIR}/ci/travis/helpers.sh"

header 'Running before_script.sh...'

# make sure brew is on master branch
run export HOMEBREW_DEVELOPER=1

# update homebrew
run brew update

# mirror the repo as a tap, then run the build from there
run export CASK_TAP_DIR="$(brew --repository)/Library/Taps/${TRAVIS_REPO_SLUG}"
run mkdir -p "${CASK_TAP_DIR}"
run rsync -az --delete "${TRAVIS_BUILD_DIR}/" "${CASK_TAP_DIR}/"
run export TRAVIS_BUILD_DIR="${CASK_TAP_DIR}"
run cd "${CASK_TAP_DIR}" || exit 1
