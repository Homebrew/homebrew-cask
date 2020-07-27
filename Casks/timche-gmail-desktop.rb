cask 'timche-gmail-desktop' do
  version '2.20.1'
  sha256 'b49e8b39b46702a0e6c32f57e23d16ec00f48d26a493a2a0f5017a7811329fb6'

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
