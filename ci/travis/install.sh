#!/usr/bin/env bash
#
# install.sh
#
# This file is meant to be sourced during the `install` phase of the Travis
# build. Do not attempt to source or run it locally.
#
# shellcheck disable=SC1090
. "${TRAVIS_BUILD_DIR}/ci/travis/helpers.sh"

enter_build_step

header 'Running install.sh...'

# install bundler and project dependencies in $GEM_HOME
run gem install --no-ri --no-rdoc bundler
run which bundle
run bundle --version
run bundle install --path="${GEM_HOME%/*/*}" --without=debug release test

if must_run_tests; then
  run bundle install --path="${GEM_HOME%/*/*}" --with=test

  # install Formulae and Casks without which some tests would be skipped
  brew_install cabextract
  brew_install unar
  run brew cask install Casks/adobe-air.rb
fi

exit_build_step
