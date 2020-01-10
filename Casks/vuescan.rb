cask 'vuescan' do
  version '9.7.19'
  sha256 'bdbb3b3560b10dc22ad79b89c3e58e258f0ae2850d986e88366c55abe7181f23'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/alternate-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
