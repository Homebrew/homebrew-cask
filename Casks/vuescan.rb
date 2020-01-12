cask 'vuescan' do
  version '9.7.20'
  sha256 '7edee0af776000dbd1c99c93e53403d591d30dc4c4104e093d2736b217e4d4e1'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/alternate-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
