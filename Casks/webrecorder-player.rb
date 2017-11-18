cask 'webrecorder-player' do
  version '1.0.5'
  sha256 '43b6a05068d867b39e2c7b596485c611b43ddf7afbe0f13109c5a1e93eeffcc2'

  url "https://github.com/webrecorder/webrecorderplayer-electron/releases/download/v#{version}/webrecorderplayer-electron-#{version}.dmg"
  appcast 'https://github.com/webrecorder/webrecorderplayer-electron/releases.atom',
          checkpoint: '4b1bd7d5071576486bbbacf42051b1ffb59cb3f55c15182b885b835da7222e0d'
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
