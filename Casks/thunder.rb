cask 'thunder' do
  version '2.7.1.2006'
  sha256 'cef50062e35fad33bce7eeef8a3c1dc5605cc74b0e496ff178ed2894af386d4c'

  # down.sandai.net was verified as official when first introduced to the cask
  url "http://down.sandai.net/mac/thunder_dl#{version}_Beta.dmg"
  name 'Thunder'
  name '迅雷'
  homepage 'http://mac.xunlei.com/'
  license :commercial

  app 'Thunder.app'
end
