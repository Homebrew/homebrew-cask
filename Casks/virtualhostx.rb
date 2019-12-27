cask 'virtualhostx' do
  version '2019.06,1005'
  sha256 '1606462e935000fa8b69eb1e4c666ea31bf8ff29977f27c4b0836c1647dd1a53'

  url "https://download.clickontyler.com/virtualhostx/virtualhostxpro_#{version.after_comma}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=45'
  name 'VirtualHostX'
  homepage 'https://clickontyler.com/virtualhostx/'

  depends_on macos: '>= :sierra'

  app 'VirtualHostX.app'
end
