cask 'zoc' do
  version '7.19.0'
  sha256 '8c5c69ee1239c2dd9e0ab4c5f4acef54690b673be0cc3b06606ac04a81e01a6c'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc#{version.major}_previous/"
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
