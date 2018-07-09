cask 'vuescan' do
  version '9.6.10'
  sha256 'f84b4ac943d15c8401c4b7830b847c2fa9803036b4eb90cad3311cf1f8d7cd72'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
