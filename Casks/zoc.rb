cask 'zoc' do
  version '7.23.2'
  sha256 '05eb03031ee5f0391800ffc1951d3d4e170430b6517a0359ce7a02a4c3a79e3b'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
