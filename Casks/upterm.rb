cask 'upterm' do
  version '0.2.154'
  sha256 '01782408e59013dfe0e682cb0f881ea1d9f6823c3012b71b075b9495a9fc4f3d'

  url "https://github.com/railsware/upterm/releases/download/v#{version}/upterm-#{version}-mac.zip"
  appcast 'https://github.com/railsware/upterm/releases.atom',
          checkpoint: 'f415321ef60981a7b6ce1786003cae1bd412f8d855c98dfa55a58bf4789e904f'
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
