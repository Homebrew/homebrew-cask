cask 'virtualhostx' do
  version '8.5.2,80_46'
  sha256 '861bb2f37c0b39ccf6c8ef97ed0e449d8d245f6670cd72da007f402ef392a129'

  # downloads-clickonideas.netdna-ssl.com/virtualhostx was verified as official when first introduced to the cask
  url "https://downloads-clickonideas.netdna-ssl.com/virtualhostx/virtualhostx#{version.after_comma}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=38'
  name 'VirtualHostX'
  homepage 'https://clickontyler.com/virtualhostx/'

  depends_on macos: '>= :sierra'

  app 'VirtualHostX.app'
end
