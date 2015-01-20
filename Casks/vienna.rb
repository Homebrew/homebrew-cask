cask :v1 => 'vienna' do
  version '3.0.3'
  sha256 'c575b069ba0fa504891c104a9652b427c559d798ceff83109eb2b86e14015c76'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/vienna-rss/Vienna#{version}.tgz"
  appcast 'http://vienna-rss.org/changelog.xml',
          :sha256 => '7ea4ef75c789e1ba1be0d977b5a6d20e8331dba5e6ae34339412cb71670955a6'
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
