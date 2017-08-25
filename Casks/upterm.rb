cask 'upterm' do
  version '0.4.0'
  sha256 'b933644ade5003e365effe28aee03290c5ac162d0d68e1a55e22350b9890dfc7'

  url "https://github.com/railsware/upterm/releases/download/v#{version}/upterm-#{version}-x86_64-macOS.dmg"
  appcast 'https://github.com/railsware/upterm/releases.atom',
          checkpoint: '0684c936f929aec95b38536f3977441b7787bfcfca8d8954ea4a6b8afd21123f'
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
