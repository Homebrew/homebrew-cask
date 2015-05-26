cask :v1 => 'waterfox' do
  version '36.0.1'
  sha256 '5fa1c8c402aab32e0cfc98b1c46e81265055cda51956f29ddd03c8fb7f1e33ae'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://d1th2p59px32bw.cloudfront.net/releases/osx64/installer/Waterfox%20#{version}%20Setup.dmg"
  name 'Waterfox'
  homepage 'https://www.waterfoxproject.org'
  license :oss

  app 'Waterfox.app'
end
