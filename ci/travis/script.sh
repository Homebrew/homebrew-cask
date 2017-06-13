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

modified_ruby_files=($(git diff --name-only --diff-filter=AM "${TRAVIS_COMMIT_RANGE}" -- *.rb))

for file in "${modified_ruby_files[@]}"; do
  [[ "${file}" == 'Casks/'* ]] && modified_casks+=("${file}") || casks_wrong_dir+=("${file}")
done

if [[ ${#casks_wrong_dir[@]} -gt 0 ]]; then
  odie "Casks added outside Casks directory: ${casks_wrong_dir[*]}"
elif [[ ${#modified_casks[@]} -gt 0 ]]; then
  run brew cask _audit_modified_casks "${TRAVIS_COMMIT_RANGE}"
  run brew cask style "${modified_casks[@]}"
else
  ohai 'No casks modified, skipping'
fi
