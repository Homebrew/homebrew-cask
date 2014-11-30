cask :v1 => 'vienna' do
  version '3.0.1'
  sha256 'f6f89ebdf76b120fea7fa4b18ce26f2d79fd789492c98452ab3b6ab0f7939a19'

  url "https://downloads.sourceforge.net/vienna-rss/Vienna#{version}.tgz"
  appcast 'http://vienna-rss.org/changelog.xml',
          :sha256 => 'e0b95e383d348a15e4e5fe806c99188983acd9bb92566f0b6277789fec7579b9'
  homepage 'http://www.vienna-rss.org'
  license :apache

  app 'Vienna.app'
  
  zap :delete => [
                  '~/Library/Application Support/Vienna',
                  '~/Library/Caches/uk.co.opencommunity.vienna2',
                  '~/Library/Preferences/uk.co.opencommunity.vienna2.plist',
                  ]
end
