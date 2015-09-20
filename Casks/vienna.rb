cask :v1 => 'vienna' do
  version '3.0.8'
  sha256 'dbb6510500539718955718567cb246901b0508c8bda804020e5026119c288c19'

  # bintray.com is the official download host per the appcast feed
  url "https://dl.bintray.com/viennarss/vienna-rss/Vienna#{version}.tgz"
  appcast 'http://vienna-rss.org/changelog.xml',
          :sha256 => '15433a536e85cb65749a8e93baeffc56b8dec68610031eca0492dbddb5d0d74b'
  name 'Vienna'
  homepage 'http://www.vienna-rss.org'
  license :apache

  app 'Vienna.app'

  zap :delete => [
                  '~/Library/Application Support/Vienna',
                  '~/Library/Caches/uk.co.opencommunity.vienna2',
                  '~/Library/Preferences/uk.co.opencommunity.vienna2.plist',
                  ]
end
