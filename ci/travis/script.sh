#!/usr/bin/env bash
#
# script.sh
#
# This file is meant to be sourced during the `script` phase of the Travis
# build. Do not attempt to source or run it locally.
#
# shellcheck disable=SC1090
. "${TRAVIS_BUILD_DIR}/ci/travis/helpers.sh"

enter_build_step

header 'Running script.sh...'

# @@@ todo: setting the --seed here is an ugly temporary hack, to remain only
#     until test-suite glitches are fixed.
run bundle exec rake test TESTOPTS='--seed=14830'

run bundle exec rake rubocop

if [[ "$TRAVIS_PULL_REQUEST" != "false" ]]; then
  # audit any modified casks (download if version, sha256, or url changed)
  run developer/bin/audit_modified_casks "${TRAVIS_BRANCH}..${TRAVIS_COMMIT}"
fi

exit_build_step
