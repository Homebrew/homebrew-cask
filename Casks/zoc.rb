cask 'zoc' do
  version '7.23.7'
  sha256 '71f6c8f5dd0d5d7b5e94b6243e369252892fc11ee509b89b36ecdbbcd1dc1bde'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
