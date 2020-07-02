cask 'zalo' do
  version '20.6.2'
  sha256 '21dd4524e89c4bbc6fca5bddbb5d7e33f1822721e3c5db2a1633565ecb2b97a7'

  # res-zaloapp-aka.zdn.vn/mac/ was verified as official when first introduced to the cask
  url "https://res-zaloapp-aka.zdn.vn/mac/ZaloSetup-#{version}.dmg#"
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
