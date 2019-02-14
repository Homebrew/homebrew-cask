cask 'zoc' do
  version '7.22.5'
  sha256 'aaf15a454c86d866b6db21bd13bbbe703f1664c49f7b02c831f93ef95cbc780b'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
