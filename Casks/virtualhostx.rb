cask 'virtualhostx' do
  version '7.1.4,7_13'
  sha256 'dc5eff30faf77057cefd758cf7f48273d9030016c86ccb92f51a7bae3a74532f'

  # downloads-clickonideas.netdna-ssl.com/virtualhostx was verified as official when first introduced to the cask
  url "https://downloads-clickonideas.netdna-ssl.com/virtualhostx/virtualhostx#{version.after_comma}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=33',
          checkpoint: 'c6f3ad643fee15c2c624f721b32214988ca9fa2107ec8d7df1ed591fc71c3c1e'
  name 'VirtualHostX'
  homepage 'https://clickontyler.com/virtualhostx/'
  license :commercial

  app 'VirtualHostX.app'
end
