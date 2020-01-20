cask 'zoc' do
  version '7.25.1'
  sha256 '40f6a0695da1e5332691036624b825c7abc41529b42ca3fae8202505018799de'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
