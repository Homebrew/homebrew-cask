cask :v1 => 'yacreader' do
  version '7.2.0'
  sha256 'e671e2c7914c070bc5ed7144db147d9ab6d6f1bc8a8272673e6dc39cb52b3101'

  url "https://bitbucket.org/luisangelsm/yacreader/downloads/YACReader-#{version}-MacOSX-Intel.dmg"
  homepage 'http://www.yacreader.com'
  license :oss

  app 'YACReader.app'
  app 'YACReaderLibrary.app'
end
