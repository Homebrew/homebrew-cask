cask 'zoc' do
  version '7.17.5'
  sha256 '71844caa35e27fccba0d22ecb0d6bb79d2aea118e0fc4fd631aa7bbf6cc12e97'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc#{version.major}_previous/",
          checkpoint: '4fc94becb878d1856ef627d6cda01f7ce88ebb1a096e8ce0785f1524792d0d10'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
