cask :v1 => 'texstudio' do
  version '2.10.2'
  sha256 'bc69850ed05d97b691abb953aa1addf58ef2d8729701c140eb32811554445f2f'

  url "http://downloads.sourceforge.net/sourceforge/texstudio/texstudio_#{version}_osx_qt5.zip"
  name 'TeXstudio'
  homepage 'http://texstudio.sourceforge.net/'
  license :gpl

  app 'texstudio.app'
end
