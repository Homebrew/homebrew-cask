cask 'zoc' do
  version '7.20.3'
  sha256 'd674b653c003d0351362c4384eea1d020ed838828bbe08dc32347de09f754aee'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
