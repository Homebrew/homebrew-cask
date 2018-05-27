cask 'yacreader' do
  version '9.0.0'
  sha256 'b9301522a6aedf3fabb3e2edc3a45597ad888e44f106e4af95946ef5b6af4573'

  # bitbucket.org/luisangelsm/yacreader was verified as official when first introduced to the cask
  url "https://bitbucket.org/luisangelsm/yacreader/downloads/YACReader-#{version}-MacOSX-Intel.dmg"
  appcast 'https://github.com/YACReader/yacreader/releases.atom',
          checkpoint: 'c334461f28f4d5a2591ba1190145f5b5fbfd9366f979eaa13174b1213a3e583a'
  name 'YACReader'
  homepage 'http://www.yacreader.com/'

  app 'YACReader.app'
  app 'YACReaderLibrary.app'
end
