cask 'vuescan' do
  version '9.6.13'
  sha256 'db322268d2417626397705bf2227ef9fc1f4493cab353461140d6d56cf9b90b8'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
