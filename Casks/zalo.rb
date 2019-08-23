cask 'zalo' do
  version '19.8.1'
  sha256 '6200c2eddbbd8e4b03336daf9f714a0f04848aab7bf83a6d9550dfeb06d591b0'

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
