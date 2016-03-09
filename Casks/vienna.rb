cask 'vienna' do
  version '3.0.9'
  sha256 'f819bf8db030b03c1ca176d5e0927efe9aa3e42e3679039e878214c215276ba6'

  # bintray.com/viennarss was verified as official when first introduced to the cask
  url "https://dl.bintray.com/viennarss/vienna-rss/Vienna#{version}.tgz"
  appcast 'http://vienna-rss.org/changelog.xml',
          checkpoint: '13ba3fe7e53bffe51f7131fde39621b9a57ab2fca7c4dc4bbbb7c6a05035b364'
  name 'Vienna'
  homepage 'http://www.vienna-rss.org'
  license :apache

  app 'Vienna.app'

  zap delete: [
                '~/Library/Application Support/Vienna',
                '~/Library/Caches/uk.co.opencommunity.vienna2',
                '~/Library/Preferences/uk.co.opencommunity.vienna2.plist',
              ]
end
