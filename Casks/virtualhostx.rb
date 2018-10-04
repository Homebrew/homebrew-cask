cask 'virtualhostx' do
  version '8.1.1,80_34'
  sha256 '0a9f99f85118f1ce3f0192004b6524e7a3e62b88de3061d3969c1b94062ed84d'

  # downloads-clickonideas.netdna-ssl.com/virtualhostx was verified as official when first introduced to the cask
  url "https://downloads-clickonideas.netdna-ssl.com/virtualhostx/virtualhostx#{version.after_comma}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=33'
  name 'VirtualHostX'
  homepage 'https://clickontyler.com/virtualhostx/'

  app 'VirtualHostX.app'
end
