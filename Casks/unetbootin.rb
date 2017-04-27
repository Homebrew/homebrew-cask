cask 'unetbootin' do
  version '638'
  sha256 '044bfc61889e899c0e2130ef6882c4743eb0f3dfcc7bd42ff6d606df85b1a6f1'

  # launchpad.net/unetbootin was verified as official when first introduced to the cask
  url "http://launchpad.net/unetbootin/trunk/#{version}/+download/unetbootin-mac-#{version}.dmg"
  appcast 'https://github.com/unetbootin/unetbootin/releases.atom',
          checkpoint: '40834386a2952a46adb82252c0d7b06994e49134a678aace34f32d442527959a'
  name 'UNetbootin'
  homepage 'https://unetbootin.github.io/'

  app 'unetbootin.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.yourcompany.unetbootin.sfl'
end
