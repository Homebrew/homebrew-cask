cask 'vuescan' do
  version '9.6.15'
  sha256 '41ed65bbb387d8e8113c61c136c8e9c31a381f1848d9181dd1885d962d7f8e89'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
