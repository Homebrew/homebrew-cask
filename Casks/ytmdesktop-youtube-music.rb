cask 'ytmdesktop-youtube-music' do
  version '1.11.0'
  sha256 '2a6a0280d4242d5a0ae48e021999269dac8b5d755115ef2d0d09b521947d61e4'

  url "https://dl.ytmdesktop.app/mac/YouTube%20Music%20Desktop%20App-#{version}.dmg"
  appcast 'https://github.com/ytmdesktop/ytmdesktop/releases.atom'
  name 'YouTube Music Desktop App'
  homepage 'https://ytmdesktop.app/'

  app 'YouTube Music Desktop App.app'
  
  zap trash: [
               '~/Library/Preferences/app.ytmd.plist',
               '~/Library/Saved Application State/app.ytmd.savedState',
             ]
end
