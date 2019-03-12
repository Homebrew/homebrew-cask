cask 'zoc' do
  version '7.22.7'
  sha256 '0e5dfa1effdf8b49381995f4a26e1a866e4f7ed3756167cf6838af216853aadf'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
