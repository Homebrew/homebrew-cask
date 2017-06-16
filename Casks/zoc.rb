cask 'zoc' do
  version '7.14.5'
  sha256 'd5d1f396e0addd6685c1be37ca47a1b35cf79cf6d215df8f6cafce770daace31'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "http://www.emtec.com/downloads/zoc/zoc#{version.no_dots}_changes.txt",
          checkpoint: '0d96259c490c220663f82b799a4c2770b573cabbcd62d4cd70ae9076f398ed43'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
