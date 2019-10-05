cask 'unetbootin' do
  version '675'
  sha256 '31fd1789a2f351ea66aa4be68f440904e7ae3ceee531256537b20ed9c5606947'

  # github.com/unetbootin/unetbootin was verified as official when first introduced to the cask
  url "https://github.com/unetbootin/unetbootin/releases/download/#{version}/unetbootin-mac-#{version}.dmg"
  appcast 'https://github.com/unetbootin/unetbootin/releases.atom'
  name 'UNetbootin'
  homepage 'https://unetbootin.github.io/'

  app 'unetbootin.app'

  zap trash: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.yourcompany.unetbootin.sfl*'
end
