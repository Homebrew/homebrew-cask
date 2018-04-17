cask 'yacreader' do
  version '9.0.0'
  sha256 'b9301522a6aedf3fabb3e2edc3a45597ad888e44f106e4af95946ef5b6af4573'

  # bitbucket.org/luisangelsm/yacreader was verified as official when first introduced to the cask
  url "https://bitbucket.org/luisangelsm/yacreader/downloads/YACReader-#{version}-MacOSX-Intel.dmg"
  name 'YACReader'
  homepage 'http://www.yacreader.com/'

  app 'YACReader.app'
  app 'YACReaderLibrary.app'
end
