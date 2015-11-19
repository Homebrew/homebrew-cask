cask :v1 => 'vienna' do
  version '3.0.9'
  sha256 'f819bf8db030b03c1ca176d5e0927efe9aa3e42e3679039e878214c215276ba6'

  # bintray.com is the official download host per the appcast feed
  url "https://dl.bintray.com/viennarss/vienna-rss/Vienna#{version}.tgz"
  appcast 'http://vienna-rss.org/changelog.xml',
          :sha256 => 'c67ecc2d8bbff9756210f86671256c4dc605274f32cdff5624102449f3174eb6'
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
