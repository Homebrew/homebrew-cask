cask 'zoc' do
  version '7.21.1'
  sha256 '596dc212ada220e51a6bc0142c2b2abb0eff1655bbc8a72a34e0e9debae89012'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
