cask :v1 => 'waterfox' do
  version '40.0.2'
  sha256 '49720ec39019cc7991531677014bbd140062fb72f0d5dbd963f7f14b75da37b6'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://d1th2p59px32bw.cloudfront.net/releases/osx64/installer/Waterfox%20#{version}%20Setup.dmg"
  name 'Waterfox'
  homepage 'https://www.waterfoxproject.org'
  license :oss

  app 'Waterfox.app'
end
