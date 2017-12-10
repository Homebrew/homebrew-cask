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

apps () { /usr/bin/find /Applications -type d -name '*.app' -maxdepth 2 ; }
kexts () { "$(brew --repository)/Library/Taps/caskroom/homebrew-cask/developer/bin/list_loaded_kext_ids" ; }
launchjob_install () { "$(brew --repository)/Library/Taps/caskroom/homebrew-cask/developer/bin/list_installed_launchjob_ids" ; }
launchjob_load () { "$(brew --repository)/Library/Taps/caskroom/homebrew-cask/developer/bin/list_loaded_launchjob_ids" ; }
pkgs () { "$(brew --repository)/Library/Taps/caskroom/homebrew-cask/developer/bin/list_recent_pkg_ids" ; }

checks=('apps' 'kexts' 'launchjob_install' 'launchjob_load' 'pkgs')

/bin/mkdir -p "${HOME}/cask-checks/"{before,after}

for check in "${checks[@]}"; do
  "${check}" > "${HOME}/cask-checks/before/${check}"
done

modified_ruby_files=($(git diff --name-only --diff-filter=AMR "${TRAVIS_COMMIT_RANGE}" -- *.rb))

for file in "${modified_ruby_files[@]}"; do
  [[ "${file}" == 'Casks/'* ]] && modified_casks+=("${file}") || casks_wrong_dir+=("${file}")
done

if [[ ${#casks_wrong_dir[@]} -gt 0 ]]; then
  odie "Casks added outside Casks directory: ${casks_wrong_dir[*]}"
elif [[ ${#modified_casks[@]} -gt 0 ]]; then
  run brew cask _audit_modified_casks "${TRAVIS_COMMIT_RANGE}"
  run brew cask style "${modified_casks[@]}"
  if [[ ${#modified_casks[@]} -le 3 ]]; then
    for cask in "${modified_casks[@]}"; do
      run brew cask reinstall --verbose "${cask}"
      run brew cask uninstall --verbose "${cask}"
    done
  else
    ohai 'More than 3 Casks modified, skipping install'
  fi
else
  ohai 'No Casks modified, skipping'
fi

set +o errexit # set by helper.sh

for check in "${checks[@]}"; do
  "${check}" > "${HOME}/cask-checks/after/${check}"

  if ! /usr/bin/diff "${HOME}/cask-checks/before/${check}" "${HOME}/cask-checks/after/${check}" > /dev/null; then 
    ohai "Leftover: ${check}"
    /usr/bin/diff "${HOME}/cask-checks/before/${check}" "${HOME}/cask-checks/after/${check}" | /usr/bin/tail -n +2
  fi
done
