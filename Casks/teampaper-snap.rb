cask 'teampaper-snap' do
  version '2.1.1,8919:2017-06-26_10-33-18'
  sha256 '3ff73c69e24b71a1c988ce1599d04ab9589ebfbc8d59050b56e52972527e0d7e'

  url "https://www.teampaper.me/sparkle/teampaper#{version.after_comma.before_colon}.zip"
  appcast 'https://www.teampaper.me/sparkle/sparkle.xml',
          checkpoint: 'bc9be0bf417f1da2c1919b62b6f1369864d36cda187b0ce12e5af176304a3785'
  name 'TeamPaper'
  homepage 'https://teampaper.me/snap/'

  app "Teampaper Snap #{version.after_colon.sub('_', ' ')}/Teampaper Snap.app"

  zap delete: [
                '~/Library/Application Support/Teampaper Snap',
                '~/Library/Application Support/com.heartbeat.TeamPaperSnap',
                '~/Library/Caches/com.heartbeat.TeamPaperSnap',
                '~/Library/Cookies/com.heartbeat.TeamPaperSnap.binarycookies',
                '~/Library/Preferences/com.heartbeat.TeamPaperSnap.plist',
              ]
end
