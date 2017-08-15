cask 'upterm' do
  version '0.3.2'
  sha256 '6ee1d9ab64285afad06ba16b7988ad7f1ee74154b5654a300cc97c5aa2203d72'

  url "https://github.com/railsware/upterm/releases/download/v#{version}/upterm-#{version}-macOS.dmg"
  appcast 'https://github.com/railsware/upterm/releases.atom',
          checkpoint: '34585b921e26eaa1ed667f4bc555332c2dca851ee1fd09b489c09bf7e0b7209a'
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
