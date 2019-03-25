cask 'zoc' do
  version '7.23.1'
  sha256 'f33c273fb789ecea66d99bd3da063fec83cc9c05281410b77582d44d2383145f'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
