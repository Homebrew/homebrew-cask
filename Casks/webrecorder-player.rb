cask 'webrecorder-player' do
  version '1.6.4'
  sha256 '11ccbe2040d53c673c38a08f6b13acec3a36c9ad0a18c3a51b86987219533dcc'

  url "https://github.com/webrecorder/webrecorder-player/releases/download/v#{version}/webrecorder-player-#{version}.dmg"
  appcast 'https://github.com/webrecorder/webrecorderplayer-electron/releases.atom'
  name 'Webrecorder Player'
  homepage 'https://github.com/webrecorder/webrecorderplayer-electron'

  app 'Webrecorder Player.app'

  zap trash: [
               '~/Library/Application Support/Webrecorder Player',
               '~/Library/Preferences/org.webrecorder.webrecorderplayer.helper.plist',
               '~/Library/Preferences/org.webrecorder.webrecorderplayer.plist',
               '~/Library/Saved Application State/org.webrecorder.webrecorderplayer.savedState',
             ]
end
