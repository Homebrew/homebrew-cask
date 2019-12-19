cask 'vuescan' do
  version '9.7.13'
  sha256 '77e024e4b5737744b627d3b34f53d619112d493ddf419e9752fcb0c6db51f701'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/alternate-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
