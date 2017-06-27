cask 'webrecorder-player' do
  version '1.0.4'
  sha256 '7cfe5db210b0d0a371346f40ba6ab098a3509bfe8c1cea4072945b8b3db93686'

  url "https://github.com/webrecorder/webrecorderplayer-electron/releases/download/v#{version}/webrecorderplayer-electron-#{version}.dmg"
  appcast 'https://github.com/webrecorder/webrecorderplayer-electron/releases.atom',
          checkpoint: '13eef2224833812bfc2608d1a88a2f12177a3ba7b356668c64099abc62a3f5cc'
  name 'Webrecorder Player'
  homepage 'https://github.com/webrecorder/webrecorderplayer-electron'

  app 'Webrecorder Player.app'

  zap delete: [
                '~/Library/Application Support/Webrecorder Player',
                '~/Library/Saved Application State/org.webrecorder.webrecorderplayer.savedState',
              ],
      trash:  [
                '~/Library/Preferences/org.webrecorder.webrecorderplayer.helper.plist',
                '~/Library/Preferences/org.webrecorder.webrecorderplayer.plist',
              ]
end
