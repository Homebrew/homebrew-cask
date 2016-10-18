cask 'zoc' do
  version '7.08.1'
  sha256 'bb3c9bef2bb2c7ff4330b371a8607c532256dc34ce9c268132695df9e8e61e57'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app 'zoc7.app'
end
