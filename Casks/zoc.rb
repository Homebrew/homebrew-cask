cask 'zoc' do
  version '7.21.2'
  sha256 'a3adb6f9491ce22478ed2e5a6c4e605a47e6662c440677ee6b84fcce81eecf24'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
