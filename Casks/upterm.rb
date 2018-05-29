cask 'upterm' do
  version '0.4.4'
  sha256 '5394926add794e486172c72ef0dc04c225a481d2970f968522c0436ef42677ee'

  url "https://github.com/railsware/upterm/releases/download/v#{version}/upterm-#{version}-macOS.dmg"
  appcast 'https://github.com/railsware/upterm/releases.atom',
          checkpoint: '9431ce96d79bbc5ee50ab80a72846f17ebea8a66d2ff0c9dbf2370025d45edc4'
  name 'Upterm'
  homepage 'https://github.com/railsware/upterm'

  app 'Upterm.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.railsware.upterm.sfl*',
               '~/Library/Application Support/Upterm',
               '~/Library/Preferences/com.github.railsware.upterm.helper.plist',
               '~/Library/Preferences/com.github.railsware.upterm.plist',
               '~/Library/Saved Application State/com.github.railsware.upterm.savedState',
               '~/.upterm',
             ]
end
