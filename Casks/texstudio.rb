cask :v1 => 'texstudio' do
  version '2.8.4'
  sha256 'a4257563d557fb66b35c562322852b969bb7768624bf02e7bf2cc2c31a5e1fbb'

  url "http://downloads.sourceforge.net/sourceforge/texstudio/texstudio_#{version}_osx_qt5.zip"
  homepage 'http://texstudio.sourceforge.net/'
  license :oss

  app 'texstudio.app'
end
