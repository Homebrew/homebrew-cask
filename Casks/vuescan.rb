cask 'vuescan' do
  version '9.6.10'
  sha256 '15835048b4af7ba309fb4c432424ed8c821f7f23c3ae02e5b75b57bf328e3c33'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
