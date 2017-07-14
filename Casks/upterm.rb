cask 'upterm' do
  version '0.2.159'
  sha256 '55a2a989375c57adaf5ee84a589414bb6a07a7aa0d5813dd25dbb5c6209b53c7'

  url "https://github.com/railsware/upterm/releases/download/v#{version}/upterm-#{version}-mac.zip"
  appcast 'https://github.com/railsware/upterm/releases.atom',
          checkpoint: '740eeb6b120a53bfdca3b12acb933e7743d7f1d2af504a450f6d11165e92aa98'
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
