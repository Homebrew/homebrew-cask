cask 'thunder' do
  version '2.7.2.2108'
  sha256 '6420e03a4604b62f3dfb2cfac8e73c57d86b6d40ac02017f8e9be748fe3bd9b3'

  # down.sandai.net was verified as official when first introduced to the cask
  url "http://down.sandai.net/mac/thunder_dl#{version}_Beta.dmg"
  name 'Thunder'
  name '迅雷'
  homepage 'http://mac.xunlei.com/'
  license :commercial

  app 'Thunder.app'
end
