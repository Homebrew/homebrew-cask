cask 'texstudio' do
  version '2.11.0'
  sha256 '588511848cb4ea075e7e588584ebb9cb32ab51982011abd0ece9a42b07bc4cf0'

  url "https://downloads.sourceforge.net/texstudio/texstudio-#{version}-osx-qt5.6.zip"
  appcast 'https://sourceforge.net/projects/texstudio/rss',
          checkpoint: 'ba0b145e424d5107e65f36f8a4170238477a40cc8f26a86c693b7853b80a76b0'
  name 'TeXstudio'
  homepage 'http://texstudio.sourceforge.net/'
  license :gpl

  app 'TeXstudio.app'
end
