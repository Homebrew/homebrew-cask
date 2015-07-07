cask :v1 => 'waterfox' do
  version '38.1.0'
  sha256 '612c324154107c23063a78b2040a41e6b8909baca058d98c3bfaec944e0b4cca'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://d1th2p59px32bw.cloudfront.net/releases/osx64/installer/Waterfox%20#{version}%20Setup.dmg"
  name 'Waterfox'
  homepage 'https://www.waterfoxproject.org'
  license :oss

  app 'Waterfox.app'
end
