cask 'vuescan' do
  version '9.6.16'
  sha256 '8c350abc5301a52f030a3141edbf7e5d4521df4c4392b931ef6eb91919d9d5b2'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/alternate-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
