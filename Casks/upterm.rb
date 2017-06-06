cask 'upterm' do
  version '0.2.156'
  sha256 'e9801196f42d884cb8d0b90702a1acea1a2721d2c45be278a39f2045c94e8097'

  url "https://github.com/railsware/upterm/releases/download/v#{version}/upterm-#{version}-mac.zip"
  appcast 'https://github.com/railsware/upterm/releases.atom',
          checkpoint: 'e5706ec66cffa54579bbfaa6dd73cf8a69df63ebf05a996ae16317969f8b5fa9'
  name 'Upterm'
  homepage 'https://github.com/railsware/upterm'

  app 'Upterm.app'

  zap delete: [
                '~/Library/Application Support/Upterm',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.railsware.upterm.sfl',
                '~/Library/Preferences/com.github.railsware.upterm.helper.plist',
                '~/Library/Preferences/com.github.railsware.upterm.plist',
                '~/Library/Saved Application State/com.github.railsware.upterm.savedState',
              ]
end
