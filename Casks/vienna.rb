cask 'vienna' do
  version '3.5.0'
  sha256 '619d0bef03f57103f22ce23068416e2d601b350c4d6f0918fa870cdac5060f57'

  # bintray.com/viennarss was verified as official when first introduced to the cask
  url "https://dl.bintray.com/viennarss/vienna-rss/Vienna#{version}.tar.gz"
  appcast 'https://viennarss.github.io/sparkle-files/changelog.xml'
  name 'Vienna'
  homepage 'http://www.vienna-rss.com/'

  app 'Vienna.app'

  zap trash: [
               '~/Library/Application Support/Vienna',
               '~/Library/Caches/uk.co.opencommunity.vienna2',
               '~/Library/Cookies/uk.co.opencommunity.vienna2.binarycookies',
               '~/Library/Preferences/uk.co.opencommunity.vienna2.plist',
               '~/Library/Saved Application State/uk.co.opencommunity.vienna2.savedState',
             ]
end
