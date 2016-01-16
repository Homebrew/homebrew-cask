#!/usr/bin/env bash
#
# before_install.sh
#
# This file is meant to be sourced during the `before_install` phase of the
# Travis build. Do not attempt to source or run it locally.
#
# shellcheck disable=SC1090
. "${TRAVIS_BUILD_DIR}/ci/travis/helpers.sh"

enter_build_step

header 'Running before_install.sh...'

# unset rvm hook functions
run unset -f cd gem

# print all travis-defined environment variables
run 'env | sort'

# see https://github.com/travis-ci/travis-ci/issues/2666
run export BRANCH_COMMIT="${TRAVIS_COMMIT_RANGE##*.}"
run export TARGET_COMMIT="${TRAVIS_COMMIT_RANGE%%.*}"
# shellcheck disable=SC2016
run 'MERGE_BASE="$(git merge-base "${BRANCH_COMMIT}" "${TARGET_COMMIT}")"'
run export MERGE_BASE="${MERGE_BASE}"
run export TRAVIS_COMMIT_RANGE="${MERGE_BASE}...${BRANCH_COMMIT}"

# print detailed OSX version info
run sw_vers

# capture system ruby and gem locations
run export SYSTEM_RUBY_HOME="/System/Library/Frameworks/Ruby.framework/Versions/${HOMEBREW_RUBY%.*}"
run export SYSTEM_RUBY_BINDIR="${SYSTEM_RUBY_HOME}/usr/bin"
run export SYSTEM_GEM_HOME="${SYSTEM_RUBY_HOME}/usr/lib/ruby/gems/${HOMEBREW_RUBY}"
run export SYSTEM_GEM_BINDIR="${SYSTEM_GEM_HOME}/bin"

# capture user gem locations
run export GEM_HOME="$HOME/.gem/ruby/${HOMEBREW_RUBY}"
run export GEM_BINDIR="${GEM_HOME}/bin"

# ensure that the gems we install are used before system gems
run export GEM_PATH="${GEM_HOME}:${SYSTEM_GEM_HOME}"
run export PATH="${GEM_BINDIR}:${SYSTEM_GEM_BINDIR}:${SYSTEM_RUBY_BINDIR}:$PATH"

# ensure that brew uses the ruby we want it to
run export HOMEBREW_RUBY_PATH="${SYSTEM_RUBY_BINDIR}/ruby"

run which ruby
run ruby --version

run which gem
run gem --version

run brew update

# ensure that we are the only brew-cask available
run brew uninstall --force brew-cask

# mirror the repo as a tap, then run the build from there
run export CASK_TAP_DIR='/usr/local/Library/Taps/caskroom/homebrew-cask'
run mkdir -p "${CASK_TAP_DIR}"
run rsync -az --delete "${TRAVIS_BUILD_DIR}/" "${CASK_TAP_DIR}/"
run export TRAVIS_BUILD_DIR="${CASK_TAP_DIR}"
run cd "${CASK_TAP_DIR}" || exit 1

exit_build_step
