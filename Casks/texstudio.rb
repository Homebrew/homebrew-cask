cask 'texstudio' do
  version '2.11.0'
  sha256 '588511848cb4ea075e7e588584ebb9cb32ab51982011abd0ece9a42b07bc4cf0'

  url "http://downloads.sourceforge.net/sourceforge/texstudio/texstudio-#{version}-osx-qt5.6.zip"
  name 'TeXstudio'
  homepage 'http://texstudio.sourceforge.net/'
  license :gpl

  app 'texstudio.app'
end
