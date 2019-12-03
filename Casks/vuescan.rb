cask 'vuescan' do
  version '9.7.11'
  sha256 '71091bf2b17b9cf32ccbf113e5556ce89f6314c6fd6f08fa4ba79dfe70dd8aaf'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/alternate-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
