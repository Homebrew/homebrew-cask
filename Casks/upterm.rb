cask 'upterm' do
  version '0.3.1'
  sha256 '6b1b0f9e868e6993dbbbd13a0c32357b4a68a68384ffb8eb10bb6d58f92a01ef'

  url "https://github.com/railsware/upterm/releases/download/v#{version}/upterm-#{version}-macOS.dmg"
  appcast 'https://github.com/railsware/upterm/releases.atom',
          checkpoint: '147e5ad1609afd1e9d8b8bcc47bd76b4400efb4d7d90100595c1a7346b89fa3c'
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
