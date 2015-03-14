cask :v1 => 'texstudio' do
  version '2.9.0'
  sha256 '716635c930375e095de018e88243d8964d6df6af32f3f0c286e21f81967db342'

  url "http://downloads.sourceforge.net/sourceforge/texstudio/texstudio_#{version}_osx_qt5.zip"
  homepage 'http://texstudio.sourceforge.net/'
  license :gpl

  app 'texstudio.app'
end
