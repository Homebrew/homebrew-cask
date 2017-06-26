cask 'vuescan' do
  version '9.5.80'
  sha256 '84d2a5481012ca453d6d278f457783bca16cdbe6ec1ec565195242139bf88e0e'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html',
          checkpoint: 'f70e45d351f1d53a3c7940d301de27d59a2c52dcc1c393b64504f7acb289a380'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
