cask 'vuescan' do
  version '9.7.20'
  sha256 '16660c55efb26ec409f2e6cca1edfe5d4e76e8943474f515bf426a6b8d3f4bec'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/alternate-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
