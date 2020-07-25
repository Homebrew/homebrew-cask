cask 'timche-gmail-desktop' do
  version '2.20.0'
  sha256 '0cbde7446c1545000397b0b818eb0a7069d915438f5acea5315c844f3a74e5ca'

  url "https://github.com/timche/gmail-desktop/releases/download/v#{version}/gmail-desktop-#{version}-mac.dmg"
  appcast 'https://github.com/timche/gmail-desktop/releases.atom'
  name 'Gmail Desktop'
  homepage 'https://github.com/timche/gmail-desktop'

  app 'Gmail Desktop.app'

  zap trash: [
               '~/Library/Logs/Gmail Desktop',
               '~/Library/Preferences/io.cheung.gmail-desktop.plist',
               '~/Library/Application Support/Gmail Desktop',
               '~/Library/Saved Application State/io.cheung.gmail-desktop.savedState',
             ]
end
