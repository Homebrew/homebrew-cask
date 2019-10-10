cask 'zoc' do
  version '7.24.3'
  sha256 '88964adf25081a896db64b8d7825c2d0de3440dc7143e2246ad42631a621b3bc'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
