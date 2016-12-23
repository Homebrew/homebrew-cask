cask 'tapaal' do
  version '3.2.1'
  sha256 '701fb0fbe22cae05162e435c95ffbf6b1a5760947ac0a5e116f80624c8d55038'

  url "http://www.tapaal.net/fileadmin/download/tapaal-#{version.major_minor}/tapaal-#{version}-mac64.dmg"
  name 'TAPAAL'
  homepage 'http://www.tapaal.net/'

  app 'Tapaal.app'
end
