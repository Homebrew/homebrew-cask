cask 'texstudio' do
  version '2.12.4'
  sha256 'b594f4c72454a5d56732c8e4c74690a77f72d99440db5bbbead6cf9640c37666'

  url "https://downloads.sourceforge.net/texstudio/texstudio-#{version}-osx-qt5.7.1.zip"
  appcast 'https://sourceforge.net/projects/texstudio/rss',
          checkpoint: '2a3e20d8bee14961e3de7989ac3cfe31439918b57fe5b6395aac134cbe561dff'
  name 'TeXstudio'
  homepage 'http://texstudio.sourceforge.net/'

  app 'texstudio.app'
end
