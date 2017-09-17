cask 'vienna' do
  version '3.1.15'
  sha256 'f68f9dbc06f99a094f5491ead84696520750fc4c4cb4c56865f690e7ed93012f'

  # bintray.com/viennarss was verified as official when first introduced to the cask
  url "https://dl.bintray.com/viennarss/vienna-rss/Vienna#{version}.tar.gz"
  appcast 'https://viennarss.github.io/sparkle-files/changelog.xml',
          checkpoint: 'eb9e986f9ce0a0948640fd1d5424aefceae766f45141f3c26755294733a7452b'
  name 'Vienna'
  homepage 'http://www.vienna-rss.com/'

  app 'Vienna.app'

  zap delete: [
                '~/Library/Application Support/Vienna',
                '~/Library/Caches/uk.co.opencommunity.vienna2',
                '~/Library/Cookies/uk.co.opencommunity.vienna2.binarycookies',
                '~/Library/Preferences/uk.co.opencommunity.vienna2.plist',
                '~/Library/Saved Application State/uk.co.opencommunity.vienna2.savedState',
              ]
end
