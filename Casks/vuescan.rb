cask 'vuescan' do
  version '9.7.14'
  sha256 '1a2013fe9d4af8784e7f200c783f85d0b699e8fe0fd74e02025529e94ac1d2e8'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/alternate-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
