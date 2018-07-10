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
launchjob_install () { "$(brew --repository)/Library/Taps/Homebrew/homebrew-cask/developer/bin/list_installed_launchjob_ids" ; }
launchjob_load () { "$(brew --repository)/Library/Taps/Homebrew/homebrew-cask/developer/bin/list_loaded_launchjob_ids" ; }
pkgs () { "$(brew --repository)/Library/Taps/Homebrew/homebrew-cask/developer/bin/list_recent_pkg_ids" ; }

checks=('pkgs' 'apps' 'launchjob_install' 'launchjob_load')

/bin/mkdir -p "${HOME}/cask-checks/"{before,after}

for check in "${checks[@]}"; do
  "${check}" > "${HOME}/cask-checks/before/${check}"
done

modified_casks=($(git diff --name-only --diff-filter=AMR "${TRAVIS_COMMIT_RANGE}" -- Casks/*.rb))

run export HOMEBREW_NO_AUTO_UPDATE=1

if [[ ${#modified_casks[@]} -eq 0 ]]; then
  onoe 'No Casks modified, skipping'
fi

run brew cask style "${modified_casks[@]}"

if [[ "${TRAVIS_REPO_SLUG}" != 'Homebrew/homebrew-cask-fonts' ]]; then
  if [[ ${#modified_casks[@]} -gt 1 ]]; then
    run brew cask audit "${modified_casks[@]}"
    odie "More than 1 Cask modified, didn't check Cask checksums or URLs"
  fi

  # check if gnupg is up to date for _audit_modified_casks
  for cask in "${modified_casks[@]}"; do
    if brew cask _stanza gpg "${cask}" &> /dev/null; then
      run brew outdated gnupg || run brew upgrade gnupg
    fi
  done
fi

run brew cask _audit_modified_casks "${TRAVIS_COMMIT_RANGE}"

if /usr/bin/grep --quiet "depends_on cask:" "${modified_casks[@]}"; then
  run brew tap homebrew/bundle
  run brew bundle dump --file="${HOME}/Brewfile"
fi

for cask in "${modified_casks[@]}"; do
  run brew cask reinstall --verbose "${cask}"
  run brew cask uninstall --verbose "${cask}"
done

if [[ -f "${HOME}/Brewfile" ]]; then
  run brew bundle cleanup --force --file="${HOME}/Brewfile"
fi

sleep 5 # Rerunning the checks too soon can result in false positives

for check in "${checks[@]}"; do
  "${check}" > "${HOME}/cask-checks/after/${check}"

  if ! /usr/bin/diff "${HOME}/cask-checks/before/${check}" "${HOME}/cask-checks/after/${check}" > /dev/null; then
    ohai "Leftover: ${check}"
    /usr/bin/diff "${HOME}/cask-checks/before/${check}" "${HOME}/cask-checks/after/${check}" | /usr/bin/grep '>'
  fi
done
