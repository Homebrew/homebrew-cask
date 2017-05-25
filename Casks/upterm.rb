cask 'upterm' do
  version '0.2.147'
  sha256 '0ca944f197f424da891e47ad67756da85fe85e8c45d40dc9ece8949201c13597'

  url "https://github.com/railsware/upterm/releases/download/v#{version}/upterm-#{version}-mac.zip"
  appcast 'https://github.com/railsware/upterm/releases.atom',
          checkpoint: '7d15a0097255494bc7c207ac9efd95c633f9874dea7c7bcea6424cf0a5bc4108'
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
