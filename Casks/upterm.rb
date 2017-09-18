cask 'upterm' do
  version '0.4.1'
  sha256 '38060e13ae950aea25a48c306977a7db12be1450a7d5f580f30d8d5f31118940'

  url "https://github.com/railsware/upterm/releases/download/v#{version}/upterm-#{version}-x86_64-macOS.dmg"
  appcast 'https://github.com/railsware/upterm/releases.atom',
          checkpoint: '11621ada0fa63b079f036441885d2d0e90f50ce85d0a27a86fb502432e90672e'
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
