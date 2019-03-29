cask 'tapaal' do
  version '3.5.0'
  sha256 '3636e127014a6762ff4f1207ba62d1555d4fadbe08b1b6a6009a133c5adef922'

  url "http://www.tapaal.net/fileadmin/download/tapaal-#{version.major_minor}/tapaal-#{version}-mac64.dmg"
  appcast 'http://www.tapaal.net/download/'
  name 'TAPAAL'
  homepage 'http://www.tapaal.net/'

  app 'Tapaal.app'
end
