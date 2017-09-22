cask 'upterm' do
  version '0.4.2'
  sha256 '2bc013caac5ec7ce3e8b2ea8a5ef1508068aedf4fc98bcaeab361d3c735dd8bc'

  url "https://github.com/railsware/upterm/releases/download/v#{version}/upterm-#{version}-macOS.dmg"
  appcast 'https://github.com/railsware/upterm/releases.atom',
          checkpoint: '43df5c685f6046eff7284d7d1c14cf9353865f5e7e1aec938166584124694724'
  name 'Upterm'
  homepage 'https://github.com/railsware/upterm'

  app 'Upterm.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.railsware.upterm.sfl',
                '~/Library/Saved Application State/com.github.railsware.upterm.savedState',
              ],
      trash:  [
                '~/Library/Application Support/Upterm',
                '~/Library/Preferences/com.github.railsware.upterm.helper.plist',
                '~/Library/Preferences/com.github.railsware.upterm.plist',
                '~/.upterm',
              ]
end
