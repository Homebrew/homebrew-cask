cask :v1 => 'zoc' do
  version '6.60'
  sha256 '2a73ceaa1515d2d2321905dc667e62bbc8c99d87fbfc5d003156d59b2c2d7e7b'

  url "http://www.emtec.com/downloads/zoc/zoc#{version.gsub('.','')}.dmg"
  name 'ZOC'
  homepage 'http://www.emtec.com/zoc/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'zoc6.app'
end
