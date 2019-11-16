cask 'zoc' do
  version '7.24.5'
  sha256 'e6b13e1e7ccffe117b2445c1f83e585976cb16cb04b474f7ea8b6d4f5540ed36'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
