cask :v1 => 'texstudio' do
  version '2.9.4'
  sha256 '1ce348f00310c4091d27b292081186626f1d186a4f529f1e2685ad2e03e7906c'

  url "http://downloads.sourceforge.net/sourceforge/texstudio/texstudio_#{version}_osx_qt5.zip"
  name 'TeXstudio'
  homepage 'http://texstudio.sourceforge.net/'
  license :gpl

  app 'texstudio.app'
end
