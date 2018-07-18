cask 'vienna' do
  version '3.4.0'
  sha256 'f2bcfb08df436e13953d846d9c296546be67e568c5f855b4cad3026891b98af0'

  # bintray.com/viennarss was verified as official when first introduced to the cask
  url "https://dl.bintray.com/viennarss/vienna-rss/Vienna#{version}.tgz"
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
