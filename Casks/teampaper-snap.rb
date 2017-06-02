cask 'teampaper-snap' do
  version '2.0.8800'
  sha256 'c07ce6ef63ef73515ad538912d2ad2a05e731da568d8303c2ffdb821287b7f7e'

  url 'http://teampaper.me/snap/download/teampapersnap.dmg'
  appcast 'https://www.teampaper.me/sparkle/sparkle.xml',
          checkpoint: '2059b3de12837e57b08dc414228a7837373124cb8d19f8770d3807d366c05037'
  name 'TeamPaper'
  homepage 'https://teampaper.me/snap/'

  app 'Teampaper Snap.app'

  zap delete: [
                '~/Library/Application Support/Teampaper Snap',
                '~/Library/Application Support/com.heartbeat.TeamPaperSnap',
                '~/Library/Caches/com.heartbeat.TeamPaperSnap',
                '~/Library/Cookies/com.heartbeat.TeamPaperSnap.binarycookies',
                '~/Library/Preferences/com.heartbeat.TeamPaperSnap.plist',
              ]
end
