cask 'yacreader' do
  version '9.5.0'
  sha256 'c7b3a9e8f385bdc9bdfb29e754503c64ae1f3703f4bbfcb381feb46659b28491'

  # bitbucket.org/luisangelsm/yacreader was verified as official when first introduced to the cask
  url "https://bitbucket.org/luisangelsm/yacreader/downloads/YACReader-#{version}-MacOSX-Intel.dmg"
  appcast 'https://github.com/YACReader/yacreader/releases.atom'
  name 'YACReader'
  homepage 'https://www.yacreader.com/'

  app 'YACReader.app'
  app 'YACReaderLibrary.app'
end
