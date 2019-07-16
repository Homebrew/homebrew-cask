cask 'zalo' do
  version '19.7.1a'
  sha256 '04c6734460039851cda69eb9ed9d79bfa57f9e225a8249af88b7b36dfa80080f'

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
