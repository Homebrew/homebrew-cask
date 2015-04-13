cask :v1 => 'thunder' do
  version '2.6.7.1706'
  sha256 '0eb7fa7e1448eebb3b60c4fa849888fff8697d20474771d0ad3001f4f5b3274d'

  # sandai.net is the official download host per the vendor homepage
  url "http://down.sandai.net/mac/thunder_dl#{version}_Beta.dmg"
  name '迅雷'
  name 'Thunder'
  homepage 'http://mac.xunlei.com/'
  license :commercial

  app 'Thunder.app'
end
