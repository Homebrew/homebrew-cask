cask 'zoc' do
  version '7.13.1'
  sha256 'e150b1dc4f6288a773ef68d19b14c482fcfb7bd708fe2a3600edb2e8e1b52310'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
