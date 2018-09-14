cask 'vuescan' do
  version '9.6.16'
  sha256 '6d9dbffc19a46b39063f285eafce54e54e9e07b2aef5f110848e0c938c23d6e6'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/alternate-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
