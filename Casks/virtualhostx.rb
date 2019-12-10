cask 'virtualhostx' do
  version '2019.05,1004'
  sha256 'e6a27c766c9f4ddff965f78dae2b573d85be319108bfe74ba8ba5111d23c7737'

  url "https://download.clickontyler.com/virtualhostx/virtualhostxpro_#{version.after_comma}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=45'
  name 'VirtualHostX'
  homepage 'https://clickontyler.com/virtualhostx/'

  depends_on macos: '>= :sierra'

  app 'VirtualHostX.app'
end
