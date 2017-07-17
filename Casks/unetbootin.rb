cask 'unetbootin' do
  version '654'
  sha256 '8676edab896dcf6757c3cdca7a98f790601eb16f5d2dbb712456e930e1c31563'

  # github.com/unetbootin/unetbootin was verified as official when first introduced to the cask
  url "https://github.com/unetbootin/unetbootin/releases/download/#{version}/unetbootin-mac-#{version}.dmg"
  appcast 'https://github.com/unetbootin/unetbootin/releases.atom',
          checkpoint: '4b2ee95d34ea959843cb3dced8624edd6e0dc5eea2670c06e6000da406c64c1f'
  name 'UNetbootin'
  homepage 'https://unetbootin.github.io/'

  app 'unetbootin.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.yourcompany.unetbootin.sfl'
end
