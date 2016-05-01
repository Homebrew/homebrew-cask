cask 'thunder' do
  version '2.6.9.1826'
  sha256 '29f155bad072f5b8d3ccf021e1b8070e4b8b679909323066f67c6c42aa711c96'

  # sandai.net is the official download host per the vendor homepage
  url "http://down.sandai.net/mac/thunder_dl#{version}_Beta.dmg"
  name 'Thunder'
  name '迅雷'
  homepage 'http://mac.xunlei.com/'
  license :commercial

  app 'Thunder.app'
end
