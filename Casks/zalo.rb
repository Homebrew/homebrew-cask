cask 'zalo' do
  version '20.1.1'
  sha256 '768bc0bb40da0e51f3b02310e796606839a1a77762f8da055db23aa5610e973b'

  # res-download-pc-te-vnno-zn-3.zadn.vn/mac was verified as official when first introduced to the cask
  url "https://res-download-pc-te-vnno-zn-3.zadn.vn/mac/ZaloSetup-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?user_agent=Macintosh&url=https://zalo.me/download/zalo-pc'
  name 'Zalo'
  homepage 'https://zalo.me/'

  app 'Zalo.app'

  zap trash: [
               '~/Library/Application Support/Zalo',
               '~/Library/Application Support/ZaloPC',
               '~/Library/Preferences/com.vng.zalo.*.plist',
               '~/Library/Saved Application State/com.vng.zalo.savedState',
             ]
end
