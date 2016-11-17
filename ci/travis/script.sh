#!/usr/bin/env bash
#
# script.sh
#
# This file is meant to be sourced during the `script` phase of the Travis
# build. Do not attempt to source or run it locally.
#
# shellcheck disable=SC1090
. "${TRAVIS_BUILD_DIR}/ci/travis/helpers.sh"

header 'Running script.sh...'

modified_cask_files () {
  git diff --name-only --diff-filter=AM "${TRAVIS_COMMIT_RANGE}" -- Casks/*.rb
}

cask_files_added_outside_casks_dir () {
  git diff --name-only --diff-filter=A "${TRAVIS_COMMIT_RANGE}" -- *.rb
}

modified_casks=($(modified_cask_files))
casks_outside_casks_dir=($(cask_files_added_outside_casks_dir))

if [[ ${#casks_outside_casks_dir[@]} -gt 0 ]]; then
  odie "Casks added outside Casks directory: ${casks_outside_casks_dir[@]}"
elif [[ ${#modified_casks[@]} -gt 0 ]]; then
  run brew cask _audit_modified_casks "${TRAVIS_COMMIT_RANGE}"
  run brew cask style "${modified_casks[@]}"
else
  ohai 'No casks modified, skipping'
fi
