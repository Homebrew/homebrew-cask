cask :v1 => 'waterfox' do
  version '35.0'
  sha256 '67a6b583a8c3e5a1b7019dd1dc8402e95d0848b674b3a45e0b764234417ac063'

  url 'https://d1th2p59px32bw.cloudfront.net/releases/osx64/installer/Waterfox%2035.0%20Setup.dmg'
  name 'Waterfox'
  homepage 'https://www.waterfoxproject.org'
  license :oss
  tags :vendor => 'Firefox'

  app 'Waterfox.app'
end
