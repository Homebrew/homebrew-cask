cask 'vuescan' do
  version '9.6.16'
  sha256 'b25a8f9af06ed10365370f04ba12072805f5b48fbb8cf3694707fc8c09df86b9'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/alternate-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
