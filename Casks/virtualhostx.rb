cask 'virtualhostx' do
  version '8.7.12,80_61'
  sha256 '4db714e733f56d215071eab54b0f2dfbb6b44b9fcda53c37ac698268f0d401be'

  # downloads-clickonideas.netdna-ssl.com/virtualhostx was verified as official when first introduced to the cask
  url "https://downloads-clickonideas.netdna-ssl.com/virtualhostx/virtualhostx#{version.after_comma}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=38'
  name 'VirtualHostX'
  homepage 'https://clickontyler.com/virtualhostx/'

  depends_on macos: '>= :sierra'

  app 'VirtualHostX.app'
end
