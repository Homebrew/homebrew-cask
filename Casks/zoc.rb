cask 'zoc' do
  version '7.25.2'
  sha256 'c38c761d3602477bc663750599d47a7908e945672b81a759364434de09cee4a3'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
