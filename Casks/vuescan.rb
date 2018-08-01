cask 'vuescan' do
  version '9.6.13'
  sha256 '1cc0bf81d5958bc186d22305c99fbe5fb725d709b92609bf8282cf99d1a4ce94'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
