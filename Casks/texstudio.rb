cask 'texstudio' do
  version '2.12.6'
  sha256 '01f659d2ec82714b9fca5b5055df274c9229f8d793e7a511520a409a81958619'

  url "https://downloads.sourceforge.net/texstudio/texstudio-#{version}-osx-qt5.7.1.zip"
  appcast 'https://sourceforge.net/projects/texstudio/rss',
          checkpoint: 'ba62f75afe0418bc7ebb9b2121d07f4f0c90f93aa9ed5002eb0dcecc173b065b'
  name 'TeXstudio'
  homepage 'http://texstudio.sourceforge.net/'

  app 'texstudio.app'
end
