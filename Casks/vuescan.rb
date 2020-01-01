cask 'vuescan' do
  version '9.7.18'
  sha256 'c61a27141610db8f407467cc3745ed10ff3cac241cc0d2e847a0fde362f6e452'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/alternate-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
