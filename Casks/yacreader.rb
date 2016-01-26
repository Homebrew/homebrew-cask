cask 'yacreader' do
  version '8.0.0'
  sha256 '6e6e2f857a3f1ad4fa19c57550677e5e46c63ffaea955e353a832e51461d3e80'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/luisangelsm/yacreader/downloads/YACReader-#{version}-MacOSX-Intel.dmg"
  name 'YACReader'
  homepage 'http://www.yacreader.com'
  license :gpl

  app 'YACReader.app'
  app 'YACReaderLibrary.app'
end
