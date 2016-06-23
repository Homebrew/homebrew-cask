cask 'virtualhostx' do
  version '7.1.6,7_15'
  sha256 'f8b655d212f2326d0e7a6076fd817205fb96659675b65402acb6a5b6b1acbb47'

  # downloads-clickonideas.netdna-ssl.com/virtualhostx was verified as official when first introduced to the cask
  url "https://downloads-clickonideas.netdna-ssl.com/virtualhostx/virtualhostx#{version.after_comma}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=33',
          checkpoint: 'e07025697ca499be7a9eb26cf6d141cfbd7ceea13220ef647c8b41f3912d1b31'
  name 'VirtualHostX'
  homepage 'https://clickontyler.com/virtualhostx/'
  license :commercial

  app 'VirtualHostX.app'
end
