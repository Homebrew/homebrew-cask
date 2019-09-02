cask 'webrecorder-player' do
  version '1.7.0'
  sha256 'f8b89442479a9ecda4b5cd02926bc8f852113946f41822eef3703180bb0d89e3'

  url "https://github.com/webrecorder/webrecorder-player/releases/download/v#{version}/webrecorder-player-#{version}.dmg"
  appcast 'https://github.com/webrecorder/webrecorder-player/releases.atom'
  name 'Webrecorder Player'
  homepage 'https://github.com/webrecorder/webrecorder-player/'

  app 'Webrecorder Player.app'

  zap trash: [
               '~/Library/Application Support/Webrecorder Player',
               '~/Library/Preferences/org.webrecorder.webrecorderplayer.helper.plist',
               '~/Library/Preferences/org.webrecorder.webrecorderplayer.plist',
               '~/Library/Saved Application State/org.webrecorder.webrecorderplayer.savedState',
             ]
end
