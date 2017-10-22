cask 'marshallofsound-google-play-music-player' do
  version '4.4.1'
  sha256 'f0c604360af08115e0338f3e6534e3486f00b55c9b7d922f060f9698a70d820b'

  # github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL- was verified as official when first introduced to the cask
  url "https://github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL-/releases/download/v#{version}/Google.Play.Music.Desktop.Player.OSX.zip"
  appcast 'https://github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL-/releases.atom',
          checkpoint: 'cfbf08baf29be3fe6f668459aeb214f87ceb6f92e21b6806a66bea2b60237da7'
  name 'Google Play Music Desktop Player'
  homepage 'https://www.googleplaymusicdesktopplayer.com/'

  app 'Google Play Music Desktop Player.app'

  uninstall login_item: 'Google Play Music Desktop Player',
            signal:     [
                          ['TERM', 'google-play-music-desktop-player'],
                          ['TERM', 'google-play-music-desktop-player.helper'],
                        ]

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/google-play-music-desktop-player.sfl',
                '~/Library/Caches/Google Play Music Desktop Player',
                '~/Library/Caches/google-play-music-desktop-player.ShipIt',
                '~/Library/Caches/google-play-music-desktop-player',
                '~/Library/Cookies/google-play-music-desktop-player.binarycookies',
                '~/Library/Saved Application State/google-play-music-desktop-player.savedState',
              ],
      trash:  [
                '~/Library/Application Support/Google Play Music Desktop Player',
                '~/Library/Application Support/google-play-music-desktop-player.ShipIt',
                '~/Library/Preferences/google-play-music-desktop-player.helper.plist',
                '~/Library/Preferences/google-play-music-desktop-player.plist',
              ]
end
