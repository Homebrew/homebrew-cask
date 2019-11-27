cask 'zoc' do
  version '7.24.6'
  sha256 '96e04ec573cd670ce89030c557e16b7d17f8ca54f6df2a085d9a73ed6e5c42d6'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
