cask 'yacreader' do
  version '8.5.0'
  sha256 '13bfd484fb1e6e1ff29e9e2e63e2485fa9415f4f2d5186a5fc90c45cef394ef2'

  # bitbucket.org/luisangelsm/yacreader was verified as official when first introduced to the cask
  url "https://bitbucket.org/luisangelsm/yacreader/downloads/YACReader-#{version}-MacOSX-Intel.dmg"
  name 'YACReader'
  homepage 'http://www.yacreader.com/'

  app 'YACReader.app'
  app 'YACReaderLibrary.app'
end
