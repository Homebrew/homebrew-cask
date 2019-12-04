cask 'vuescan' do
  version '9.7.11'
  sha256 '2537c70dccd3dc1d6b053e6ea3125460025f1b32c0ebf3920a864b140b7560e6'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/alternate-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
