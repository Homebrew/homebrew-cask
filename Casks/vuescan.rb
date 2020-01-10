cask 'vuescan' do
  version '9.7.19'
  sha256 '549dcd2c3562f3628fae2eb4b339aec15f11a778bd3cfb59a9b00018af3ecfa1'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/alternate-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
