cask 'vuescan' do
  version '9.6.11'
  sha256 '6a3024b480b24ef9ec65a0dc4f693801307c1a51e050edc7170dc1eda3b2c119'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
