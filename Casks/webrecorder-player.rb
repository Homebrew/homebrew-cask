cask 'webrecorder-player' do
  version '1.0.8'
  sha256 '0bf5a72be2683995530b531114fc95338a798de4e49a9bebcfe839f2ea199ced'

  url "https://github.com/webrecorder/webrecorderplayer-electron/releases/download/v#{version}/webrecorderplayer-electron-osx-#{version}.dmg"
  appcast 'https://github.com/webrecorder/webrecorderplayer-electron/releases.atom',
          checkpoint: 'c1090fe8bed42cd599b321694ccb14962a370b8c79caad18006ab722f14cc84e'
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
