cask :v1 => 'texstudio' do
  version '2.10.4'
  sha256 '2881fa4d44e8cf92d01a7dbc5c314ff059f00f610ea1144a70b4abdcbee61d1b'

  url "http://downloads.sourceforge.net/sourceforge/texstudio/texstudio-#{version}-osx-qt5.5.1.zip"
  name 'TeXstudio'
  homepage 'http://texstudio.sourceforge.net/'
  license :gpl

  app 'texstudio.app'
end
