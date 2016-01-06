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

run bundle exec rake test:coverage
run bundle exec rake coveralls:push || true # in case of networking errors
run bundle exec rake rubocop

if [[ "$TRAVIS_PULL_REQUEST" != "false" ]]; then
  TRAVIS_BRANCH_COMMIT="$(git rev-parse --verify -q "${TRAVIS_BRANCH}")"
  TRAVIS_COMMIT_RANGE="${TRAVIS_BRANCH_COMMIT}..${TRAVIS_COMMIT}"
else
  TRAVIS_LAST_COMMIT="$(git rev-parse --verify -q "${TRAVIS_COMMIT}^")"
  TRAVIS_COMMIT_RANGE="${TRAVIS_LAST_COMMIT}..${TRAVIS_COMMIT}"
fi

# audit any modified casks (download if version, sha256, or url changed)
run developer/bin/audit_modified_casks "${TRAVIS_COMMIT_RANGE}"

exit_build_step
