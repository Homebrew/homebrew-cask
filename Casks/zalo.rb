cask 'zalo' do
  version '19.12.1'
  sha256 '4354946050ae4cf6690da3228190a58eaf5c5f306533ce9880a09ed541eb4aea'

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
