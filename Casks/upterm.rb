cask 'upterm' do
  version '0.2.161'
  sha256 '2f6299d8b9c08ab4d665ab3e8bbbed891f9ed6d6754238ea0fff45cb7770f6f4'

  url "https://github.com/railsware/upterm/releases/download/v#{version}/upterm-#{version}-osx.dmg"
  appcast 'https://github.com/railsware/upterm/releases.atom',
          checkpoint: '2fed35ecf1f63e2fffe396b6f4051109ca1b6f5b08c145313cccaea0a9bd3842'
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
