cask 'zoc' do
  version '7.14.1'
  sha256 'a7ddf27fa49d172f87272d7a6d23faf9c7fa3121accecfb81ceb778989d11036'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "http://www.emtec.com/downloads/zoc/zoc#{version.no_dots}_changes.txt",
          checkpoint: '8d5763e67bdee0cf102279773ebbf66f59cccc446c9a8cc69a3cad8ab2a30ceb'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
