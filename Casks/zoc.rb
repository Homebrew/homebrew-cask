cask 'zoc' do
  version '7.23.6'
  sha256 'd3a28d61e207c754f460b01226e8345fa93180a94ef990b53b2885939bfd3415'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
