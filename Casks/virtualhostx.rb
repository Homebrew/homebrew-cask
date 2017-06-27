cask 'virtualhostx' do
  version '7.3.0,7_19'
  sha256 '0ae7cef8c94d48eb2ebd63df7bae8422c68f3801b8412d2f67d7f80e8e9104ce'

  # downloads-clickonideas.netdna-ssl.com/virtualhostx was verified as official when first introduced to the cask
  url "https://downloads-clickonideas.netdna-ssl.com/virtualhostx/virtualhostx#{version.after_comma}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=33',
          checkpoint: 'e6ff3d5015f7c35f72c44f433656ecc7fefb76fc947b9d5ebf516338b62e2425'
  name 'VirtualHostX'
  homepage 'https://clickontyler.com/virtualhostx/'

  app 'VirtualHostX.app'
end
