cask 'virtualhostx' do
  version '8.4.2,80_43'
  sha256 '748707d5cc1a9af464292c139c9c7e519d0ed501d1aa1a9263d9d329c5a5c8a5'

  # downloads-clickonideas.netdna-ssl.com/virtualhostx was verified as official when first introduced to the cask
  url "https://downloads-clickonideas.netdna-ssl.com/virtualhostx/virtualhostx#{version.after_comma}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=38'
  name 'VirtualHostX'
  homepage 'https://clickontyler.com/virtualhostx/'

  app 'VirtualHostX.app'
end
