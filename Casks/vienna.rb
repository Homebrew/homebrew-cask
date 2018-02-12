cask 'vienna' do
  version '3.2.1'
  sha256 'd96d6f0450da426b5a140c95138041621ec548c33414eb9a588fcc408e5e1b3f'

  # bintray.com/viennarss was verified as official when first introduced to the cask
  url "https://dl.bintray.com/viennarss/vienna-rss/Vienna#{version}.tgz"
  appcast 'https://viennarss.github.io/sparkle-files/changelog.xml',
          checkpoint: '787bdc8be7b4bc50f5b8442128c2ac792b57f2f5f89ffc36d82ed57d835c2009'
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
