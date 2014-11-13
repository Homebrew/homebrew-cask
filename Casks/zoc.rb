cask :v1 => 'zoc' do
  version '6.60'
  sha256 '2a73ceaa1515d2d2321905dc667e62bbc8c99d87fbfc5d003156d59b2c2d7e7b'

  url "http://www.emtec.com/downloads/zoc/zoc#{version.gsub('.','')}.dmg"
  homepage 'http://www.emtec.com/zoc/'
  license :unknown

  app 'zoc6.app'
end
