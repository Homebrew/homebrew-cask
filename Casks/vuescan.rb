cask 'vuescan' do
  version '9.6.20'
  sha256 :no_check # required as upstream package is updated in-place

  # Include a dummy query in the URL to make it unique wrt the patch level.
  # Otherwise, homebrew might use any existing cached copy of the previously
  # downloaded file instead of a new copy since the filename doesn't change.
  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg?#{version.patch}"
  appcast 'https://www.hamrick.com/alternate-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
