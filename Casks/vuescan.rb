cask 'vuescan' do
  version '9.6.14'
  sha256 '95ac1b67b384b20f6dc0742800d3fe479d6a9b768d868f84180067ead02e5e2b'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
