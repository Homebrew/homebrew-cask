cask 'upterm' do
  version '0.3.0'
  sha256 '9b4f0249993d2968d5e38403d4cb0dd5a68c8e08558ab40241b20164caf84134'

  url "https://github.com/railsware/upterm/releases/download/v#{version}/upterm-#{version}-macOS.dmg"
  appcast 'https://github.com/railsware/upterm/releases.atom',
          checkpoint: 'fdd4ec80eed403c57a86520c231f4b3e6e0b39d483feb5adc80955670198772a'
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
