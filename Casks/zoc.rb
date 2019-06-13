cask 'zoc' do
  version '7.23.5'
  sha256 '059d2165e5f1b038f1881bdf1e5ae82540ea14b3a382c614210a3ca874ec174e'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
