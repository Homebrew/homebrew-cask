cask 'webrecorder-player' do
  version '1.6.3'
  sha256 '142a2c897246d84e9fa837691b1ab2ec15b3f2cd603aaa7a5f522ee440fa9bce'

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
