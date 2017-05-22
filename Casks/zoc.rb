cask 'zoc' do
  version '7.14.3'
  sha256 '20aae3eb0da50c86bd731e06fa39abacf672692feea7f68f0c4f3d768e91dbbd'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "http://www.emtec.com/downloads/zoc/zoc#{version.no_dots}_changes.txt",
          checkpoint: '9f9507d331042067e0d04c51a0e417ad697123e93ae8cb2be54a97116ada72e8'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
