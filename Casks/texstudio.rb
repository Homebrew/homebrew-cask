cask 'texstudio' do
  version '2.12.6'
  sha256 '01f659d2ec82714b9fca5b5055df274c9229f8d793e7a511520a409a81958619'

  url "https://downloads.sourceforge.net/texstudio/texstudio-#{version}-osx-qt5.7.1.zip"
  appcast 'https://sourceforge.net/projects/texstudio/rss',
          checkpoint: 'bc2e3519f42f8bd2f187cd3646ba3f0ccbd22da32288b70ba5762d6174f3334b'
  name 'TeXstudio'
  homepage 'http://texstudio.sourceforge.net/'

  app 'texstudio.app'
end
