cask :v1 => 'texstudio' do
  version '2.8.8'
  sha256 'bc0212fe6897128982cbd7227ec10562fdb421ba8e127e45d79e9c766896665a'

  url "http://downloads.sourceforge.net/sourceforge/texstudio/texstudio_#{version}_osx_qt5.zip"
  homepage 'http://texstudio.sourceforge.net/'
  license :oss

  app 'texstudio.app'
end
