cask :v1 => 'yacreader' do
  version '7.2.0'
  sha256 'e671e2c7914c070bc5ed7144db147d9ab6d6f1bc8a8272673e6dc39cb52b3101'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/luisangelsm/yacreader/downloads/YACReader-#{version}-MacOSX-Intel.dmg"
  name 'YACReader'
  homepage 'http://www.yacreader.com'
  license :gpl

  app 'YACReader.app'
  app 'YACReaderLibrary.app'
end
