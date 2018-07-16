cask 'vuescan' do
  version '9.6.12'
  sha256 'a5a7ce420a3c1f8a0ac9f650314aab437e104d1aa57774589340de090531d561'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
