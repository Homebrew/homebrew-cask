cask 'vuescan' do
  version '9.7.18'
  sha256 '22010d1fec4eee4fa5b5987f58253a69a98545598eb5e210c9e1071404d9fad0'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/alternate-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
