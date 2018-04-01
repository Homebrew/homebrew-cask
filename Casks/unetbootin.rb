cask 'unetbootin' do
  version '657'
  sha256 '50f181ddaeb487f4b29e7a1778d8597009f3cf3a60f15c3c8140108719947351'

  # github.com/unetbootin/unetbootin was verified as official when first introduced to the cask
  url "https://github.com/unetbootin/unetbootin/releases/download/#{version}/unetbootin-mac-#{version}.dmg"
  appcast 'https://github.com/unetbootin/unetbootin/releases.atom',
          checkpoint: '491fea992c89ffa7974c4916380a64506369a3edf140f7d1fbee3d9720b4a3e0'
  name 'UNetbootin'
  homepage 'https://unetbootin.github.io/'

  app 'unetbootin.app'

  zap trash: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.yourcompany.unetbootin.sfl*'
end
