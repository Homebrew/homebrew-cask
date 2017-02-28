cask 'teampaper-snap' do
  version '2.0.8680'
  sha256 '5041890f61d3ccd8c461cc8573eceb96099d0da683a0674b84401afd632ac3b2'

  url 'http://teampaper.me/snap/download/teampapersnap.dmg'
  appcast 'https://www.teampaper.me/sparkle/sparkle.xml',
          checkpoint: 'fbe8869c3ed69e50b8a6b36b8d89610d1c02dcf1b98ce34ea92533b12b2dd51c'
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
