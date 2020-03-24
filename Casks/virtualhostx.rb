cask 'virtualhostx' do
  version '2020.04,1010'
  sha256 'f9250e8444daf6b0e8984830de5c43d2c461333fd0aaf63fd3c407024062348a'

  url "https://download.clickontyler.com/virtualhostx/virtualhostxpro_#{version.after_comma}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=45'
  name 'VirtualHostX'
  homepage 'https://clickontyler.com/virtualhostx/'

  depends_on macos: '>= :sierra'

  app 'VirtualHostX.app'
end
