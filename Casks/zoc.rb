cask 'zoc' do
  version '7.21.3'
  sha256 '03f4b71a8dd2789c47b30e1517de30d70da7a91cbd7dbb70548a40fa78505ae2'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
