cask 'upterm' do
  version '0.4.3'
  sha256 'b4121a9a5f38b605b779f50ca2963732c3a2935793c4787346dc7940e3f1e7da'

  url "https://github.com/railsware/upterm/releases/download/v#{version}/upterm-#{version}-macOS.dmg"
  appcast 'https://github.com/railsware/upterm/releases.atom',
          checkpoint: '84f681f88d2bd60baf5ce8c0549f3477803c1f5e128c6968bf825bac85bdc930'
  name 'Upterm'
  homepage 'https://github.com/railsware/upterm'

  app 'Upterm.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.railsware.upterm.sfl*',
                '~/Library/Saved Application State/com.github.railsware.upterm.savedState',
              ],
      trash:  [
                '~/Library/Application Support/Upterm',
                '~/Library/Preferences/com.github.railsware.upterm.helper.plist',
                '~/Library/Preferences/com.github.railsware.upterm.plist',
                '~/.upterm',
              ]
end
