cask 'thunder' do
  version '2.6.11.1874'
  sha256 '8800970b44c108340cca1f4fd34b9496fc41df565b29b9900d15544df809985c'

  # down.sandai.net was verified as official when first introduced to the cask
  url "http://down.sandai.net/mac/thunder_dl#{version}_Beta.dmg"
  name 'Thunder'
  name '迅雷'
  homepage 'http://mac.xunlei.com/'
  license :commercial

  app 'Thunder.app'
end
