cask 'zoc' do
  version '7.20.1'
  sha256 '9ab425a4887caf509ffe583848759911acf70788a94896733a2b325d50f6d1eb'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
