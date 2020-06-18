cask 'ytmdesktop' do
  version '1.11.0'
  sha256 '2a6a0280d4242d5a0ae48e021999269dac8b5d755115ef2d0d09b521947d61e4'

  url "https://github.com/ytmdesktop/ytmdesktop/releases/download/v#{version}/YouTube.Music.Desktop.App-#{version}.dmg"
  appcast 'https://ytmdesktop.app/#download'
  name 'YouTube Music Desktop App'
  homepage 'https://ytmdesktop.app'

  app 'YouTube Music Desktop App.app'
end
