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
unset -f cd gem

# see https://github.com/travis-ci/travis-ci/issues/2666
TRAVIS_COMMIT="$(git rev-parse --verify -q HEAD)"
export TRAVIS_COMMIT

# print all travis-defined environment variables
run env | grep TRAVIS

# print detailed OSX version info
run sw_vers

# capture system ruby and gem locations
export SYSTEM_RUBY_HOME="/System/Library/Frameworks/Ruby.framework/Versions/${HOMEBREW_RUBY%.*}"
export SYSTEM_RUBY_BINDIR="${SYSTEM_RUBY_HOME}/usr/bin"
export SYSTEM_GEM_HOME="${SYSTEM_RUBY_HOME}/usr/lib/ruby/gems/${HOMEBREW_RUBY}"
export SYSTEM_GEM_BINDIR="${SYSTEM_GEM_HOME}/bin"

# capture user gem locations
export GEM_HOME="$HOME/.gem/ruby/${HOMEBREW_RUBY}"
export GEM_BINDIR="${GEM_HOME}/bin"

# ensure that the gems we install are used before system gems
export GEM_PATH="${GEM_HOME}:${SYSTEM_GEM_HOME}"
export PATH="${GEM_BINDIR}:${SYSTEM_GEM_BINDIR}:${SYSTEM_RUBY_BINDIR}:$PATH"

# ensure that brew uses the ruby we want it to
export HOMEBREW_RUBY_PATH="${SYSTEM_RUBY_BINDIR}/ruby"

run which ruby
run ruby --version

run which gem
run gem --version

run brew update

# ensure that we are the only brew-cask available
run brew uninstall --force brew-cask

# mirror the repo as a tap, then run the build from there
export CASK_TAP_DIR='/usr/local/Library/Taps/caskroom/homebrew-cask'
run mkdir -p "${CASK_TAP_DIR}"
run rsync -az --delete "${TRAVIS_BUILD_DIR}/" "${CASK_TAP_DIR}/"
export TRAVIS_BUILD_DIR="${CASK_TAP_DIR}"
run cd "${CASK_TAP_DIR}" || exit 1

exit_build_step
