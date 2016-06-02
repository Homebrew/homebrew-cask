cask 'virtualhostx' do
  version '7.1.2,7_11'
  sha256 '116f279ff05d3be583a8b00d8cb753872dbb29f50a1ff3e82c79d18c42de48cb'

  # downloads-clickonideas.netdna-ssl.com/virtualhostx was verified as official when first introduced to the cask
  url "https://downloads-clickonideas.netdna-ssl.com/virtualhostx/virtualhostx#{version.after_comma}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=33',
          checkpoint: '3c12d4345ecddc6977754c588a7ad604c1b05e44b777eac993ff3b9d0653fb21'
  name 'VirtualHostX'
  homepage 'https://clickontyler.com/virtualhostx/'
  license :commercial

  app 'VirtualHostX.app'
end
