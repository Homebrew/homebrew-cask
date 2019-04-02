cask 'virtualhostx' do
  version '8.7.7,80_56'
  sha256 'f4e4c8293000d581b051fce5ca6dd31365fce76a5ebe3b6b3f293ef9da59371a'

  # downloads-clickonideas.netdna-ssl.com/virtualhostx was verified as official when first introduced to the cask
  url "https://downloads-clickonideas.netdna-ssl.com/virtualhostx/virtualhostx#{version.after_comma}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=38'
  name 'VirtualHostX'
  homepage 'https://clickontyler.com/virtualhostx/'

  depends_on macos: '>= :sierra'

  app 'VirtualHostX.app'
end
