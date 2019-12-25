cask 'vuescan' do
  version '9.7.14'
  sha256 '6bf1224b0dcd983fbbe058206dd2886f55d1f175eb6ae26c593d3306504f834d'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/alternate-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
