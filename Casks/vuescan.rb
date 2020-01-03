cask 'vuescan' do
  version '9.7.18'
  sha256 '6b527aef8eb378d52355ba4395a0288ad2cbb11140fdd150879856ed7dbbebbb'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/alternate-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
