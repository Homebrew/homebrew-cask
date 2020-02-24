cask 'vienna' do
  version '3.5.5'
  sha256 '8b3551ea46375bd5bb56de98e82845562fa94ddb3d2d69d9a26d13ce611d7e1e'

  # bintray.com/viennarss was verified as official when first introduced to the cask
  url "https://dl.bintray.com/viennarss/vienna-rss/Vienna#{version}.tar.gz"
  appcast 'https://viennarss.github.io/sparkle-files/changelog.xml'
  name 'Vienna'
  homepage 'https://www.vienna-rss.com/'

  app 'Vienna.app'

  zap trash: [
               '~/Library/Application Support/Vienna',
               '~/Library/Caches/uk.co.opencommunity.vienna2',
               '~/Library/Cookies/uk.co.opencommunity.vienna2.binarycookies',
               '~/Library/Preferences/uk.co.opencommunity.vienna2.plist',
               '~/Library/Saved Application State/uk.co.opencommunity.vienna2.savedState',
             ]
end
