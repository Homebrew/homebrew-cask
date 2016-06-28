cask 'virtualhostx' do
  version '7.1.7,7_16'
  sha256 'fac4e42140d642e442a528d634f04fe0025560f1d908db2de12609621cdd1991'

  # downloads-clickonideas.netdna-ssl.com/virtualhostx was verified as official when first introduced to the cask
  url "https://downloads-clickonideas.netdna-ssl.com/virtualhostx/virtualhostx#{version.after_comma}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=33',
          checkpoint: 'cf50646d61515de31d60fc2ba6b7030f91f5dff586bde77c19f8197bdfa90b33'
  name 'VirtualHostX'
  homepage 'https://clickontyler.com/virtualhostx/'
  license :commercial

  app 'VirtualHostX.app'
end
