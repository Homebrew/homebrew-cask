cask 'virtualhostx' do
  version '7.1.5,7_14'
  sha256 'c10caf8a5136f488b2a9e83f6652b3df4a176a7de1b8bd4e20f62a964d0ba069'

  # downloads-clickonideas.netdna-ssl.com/virtualhostx was verified as official when first introduced to the cask
  url "https://downloads-clickonideas.netdna-ssl.com/virtualhostx/virtualhostx#{version.after_comma}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=33',
          checkpoint: '9fcdd34cbd1959eef76922a33cc03ac5abbbbb814e60797cd15552ed9f8b1df8'
  name 'VirtualHostX'
  homepage 'https://clickontyler.com/virtualhostx/'
  license :commercial

  app 'VirtualHostX.app'
end
