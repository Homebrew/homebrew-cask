cask 'yacreader' do
  version '9.6.2'
  sha256 '92152f17b4ff072c3463ae045da5d232c2f59cb77267a0eeebb8af5de7d29214'

  url "https://github.com/YACReader/yacreader/releases/download/#{version}/YACReader-#{version}.1909283.MacOSX-Intel.dmg"
  appcast 'https://github.com/YACReader/yacreader/releases.atom'
  name 'YACReader'
  homepage 'https://www.yacreader.com/'

  app 'YACReader.app'
  app 'YACReaderLibrary.app'
end
