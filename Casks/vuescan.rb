cask 'vuescan' do
  version '9.7.12'
  sha256 'ac2ac7afd81776b81417d8457bc5f0d9fd52974fc060cff6fb84ab63eb9ac812'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/alternate-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
