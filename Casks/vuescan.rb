cask 'vuescan' do
  version '9.7.16'
  sha256 '0e51ecff42a24a2e34ee174cef8609dd65e988b1dadf27276f1c829a8dc91c5c'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/alternate-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
