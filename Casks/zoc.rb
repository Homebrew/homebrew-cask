cask 'zoc' do
  version '7.19.0'
  sha256 '8c5c69ee1239c2dd9e0ab4c5f4acef54690b673be0cc3b06606ac04a81e01a6c'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc#{version.major}_previous/",
          checkpoint: 'c9bc3eac4a46c5e305b7167e8eeb5a4de3b2d9793cf6d3b3dd85849af05b13d6'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
