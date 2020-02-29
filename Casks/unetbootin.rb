cask 'unetbootin' do
  version '677'
  sha256 '2f232c59e0a1d627206df3618e0b71ff0227b7ec985c679f1cc5e6bd4ea1cd5b'

  # github.com/unetbootin/unetbootin was verified as official when first introduced to the cask
  url "https://github.com/unetbootin/unetbootin/releases/download/#{version}/unetbootin-mac-#{version}.dmg"
  appcast 'https://github.com/unetbootin/unetbootin/releases.atom'
  name 'UNetbootin'
  homepage 'https://unetbootin.github.io/'

  app 'unetbootin.app'

  zap trash: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.yourcompany.unetbootin.sfl*'
end
