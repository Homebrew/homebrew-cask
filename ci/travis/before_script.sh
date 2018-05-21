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

# this is not normally required but does prevent problems with outdated forks and/or deleted casks
# see https://github.com/Homebrew/homebrew-cask/pull/43164
run export BRANCH_COMMIT="${TRAVIS_COMMIT_RANGE##*.}"
run export TARGET_COMMIT="${TRAVIS_COMMIT_RANGE%%.*}"
# shellcheck disable=SC2016
if ! run 'MERGE_BASE="$(git merge-base "${BRANCH_COMMIT}" "${TARGET_COMMIT}")"'; then
  run git fetch --unshallow
  run 'MERGE_BASE="$(git merge-base "${BRANCH_COMMIT}" "${TARGET_COMMIT}")"'
fi
run export MERGE_BASE="${MERGE_BASE}"
run export TRAVIS_COMMIT_RANGE="${MERGE_BASE}...${BRANCH_COMMIT}"

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
