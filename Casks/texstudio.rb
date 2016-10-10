cask 'texstudio' do
  version '2.11.2'
  sha256 '5447741352557ddb516bb5edd87ee70fade420dd5d5a19ddddb20fd67c100e61'

  url "https://downloads.sourceforge.net/texstudio/texstudio-#{version}-osx-qt5.6.zip"
  appcast 'https://sourceforge.net/projects/texstudio/rss',
          checkpoint: '4aa5fc6120f04f5cb217399f5d4776c0071cb03a310f8dd7d5e89a3caaadabd5'
  name 'TeXstudio'
  homepage 'http://texstudio.sourceforge.net/'

  app 'TeXstudio.app'
end
