cask 'texstudio' do
  version '2.10.6'
  sha256 '292df4e60a3abd92f58f4479caa208b647824b62911652ef02c0f293e28f75d8'

  url "http://downloads.sourceforge.net/sourceforge/texstudio/texstudio-#{version}-osx-qt5.5.1.zip"
  name 'TeXstudio'
  homepage 'http://texstudio.sourceforge.net/'
  license :gpl

  app 'texstudio.app'
end
