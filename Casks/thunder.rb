cask 'thunder' do
  version '2.6.7.1706'
  sha256 '974de57f80e110f1a2001b7bf0b2e60edc28fd6a2234f8f2574ea49c8c6598ff'

  # sandai.net is the official download host per the vendor homepage
  url "http://down.sandai.net/mac/thunder_dl#{version}_Beta.dmg"
  name 'Thunder'
  name '迅雷'
  homepage 'http://mac.xunlei.com/'
  license :commercial

  app 'Thunder.app'
end
