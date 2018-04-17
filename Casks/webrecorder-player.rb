cask 'webrecorder-player' do
  version '1.0.9'
  sha256 '4583299762d426eea22ef9b4c3a4985992e7da00cc39f5e6df64215b0d461c66'

  url "https://github.com/webrecorder/webrecorderplayer-electron/releases/download/v#{version}/webrecorderplayer-electron-osx-#{version}.dmg"
  appcast 'https://github.com/webrecorder/webrecorderplayer-electron/releases.atom',
          checkpoint: '070af3a0f8992330d3d311108754786c22480bc09f7cd02283bba6d338d9fc55'
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
