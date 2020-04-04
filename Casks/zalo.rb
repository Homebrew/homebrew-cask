cask 'zalo' do
  version '20.3.3'
  sha256 'f413cc1c0e7d32f616dbacb57335b7aa46c23dd772c67568fe2c5f878fa6fc18'

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
