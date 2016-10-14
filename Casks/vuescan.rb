cask 'vuescan' do
  version '9.5.41'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
