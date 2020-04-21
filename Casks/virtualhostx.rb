cask 'virtualhostx' do
  version '2020.05,1011'
  sha256 '1e0dc424e33ac06ba673b0381ff33ad3079992b69688936e56cee922ddb70e4d'

  url "https://download.clickontyler.com/virtualhostx/virtualhostxpro_#{version.after_comma}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=45'
  name 'VirtualHostX'
  homepage 'https://clickontyler.com/virtualhostx/'

  depends_on macos: '>= :sierra'

  app 'VirtualHostX.app'
end
