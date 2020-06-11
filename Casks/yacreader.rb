cask 'yacreader' do
  version '9.6.2.1909283'
  sha256 '92152f17b4ff072c3463ae045da5d232c2f59cb77267a0eeebb8af5de7d29214'

  # github.com/YACReader/yacreader/ was verified as official when first introduced to the cask
  url "https://github.com/YACReader/yacreader/releases/download/#{version.major_minor_patch}/YACReader-#{version}.MacOSX-Intel.dmg"
  appcast 'https://github.com/YACReader/yacreader/releases.atom',
          must_contain: version.major_minor_patch
  name 'YACReader'
  homepage 'https://www.yacreader.com/'

  app 'YACReader.app'
  app 'YACReaderLibrary.app'
end
