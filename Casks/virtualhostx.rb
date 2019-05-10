cask 'virtualhostx' do
  version '8.7.10,80_59'
  sha256 '185eb973ab0b23e7d41c667b10d8874982fca0a64ecb778236b7d3828fec6fc2'

  # downloads-clickonideas.netdna-ssl.com/virtualhostx was verified as official when first introduced to the cask
  url "https://downloads-clickonideas.netdna-ssl.com/virtualhostx/virtualhostx#{version.after_comma}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=38'
  name 'VirtualHostX'
  homepage 'https://clickontyler.com/virtualhostx/'

  depends_on macos: '>= :sierra'

  app 'VirtualHostX.app'
end
