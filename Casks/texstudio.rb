cask 'texstudio' do
  version '2.12.4'
  sha256 'b594f4c72454a5d56732c8e4c74690a77f72d99440db5bbbead6cf9640c37666'

  url "https://downloads.sourceforge.net/texstudio/texstudio-#{version}-osx-qt5.7.1.zip"
  appcast 'https://sourceforge.net/projects/texstudio/rss',
          checkpoint: 'c15be9de6478bfea79db4dfad89c7e1d35c624377fe690ea4cbffc3df8cb331b'
  name 'TeXstudio'
  homepage 'http://texstudio.sourceforge.net/'

  app 'texstudio.app'
end
