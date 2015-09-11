cask :v1 => 'waterfox' do
  version '39.0'
  sha256 'ba25c4c3a422b2727d5d47a1369fb26b3c66d9c03967fdd22076e27fff982134'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://d1th2p59px32bw.cloudfront.net/releases/osx64/installer/Waterfox%20#{version}%20Setup.dmg"
  name 'Waterfox'
  homepage 'https://www.waterfoxproject.org'
  license :oss

  app 'Waterfox.app'
end
