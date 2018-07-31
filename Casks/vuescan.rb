cask 'vuescan' do
  version '9.6.13'
  sha256 '018c22c7d8de3b6e45e0708f393eeeb6822ef03e1f141015e03c57c5931f9d9d'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
