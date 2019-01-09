cask 'zoc' do
  version '7.22.3'
  sha256 'ae843feb8bed4354e7d915957cd8c33eda823a2d5515a9c2c7c76eaefdee255c'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
