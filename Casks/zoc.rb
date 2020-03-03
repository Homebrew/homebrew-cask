cask 'zoc' do
  version '7.25.4'
  sha256 'bf29697e5b882076e791a683f24ae0fef00adffea96478acbe08f2cc5c1ca8f6'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
