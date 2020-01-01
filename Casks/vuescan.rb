cask 'vuescan' do
  version '9.7.17'
  sha256 '1cb9736b65c41ddd11c59a5347a137ae790020cb7dd8141a41cc412cfba8322f'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/alternate-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
