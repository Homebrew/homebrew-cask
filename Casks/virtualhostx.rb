cask 'virtualhostx' do
  version '2020.01,1006'
  sha256 'df310b44a8cf46fdc7028ba0da5fa7cbfaaf4a3944623742a91ade275676c8f5'

  url "https://download.clickontyler.com/virtualhostx/virtualhostxpro_#{version.after_comma}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=45'
  name 'VirtualHostX'
  homepage 'https://clickontyler.com/virtualhostx/'

  depends_on macos: '>= :sierra'

  app 'VirtualHostX.app'
end
