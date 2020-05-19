cask 'zalo' do
  version '20.4.2'
  sha256 '2864653a83c1dbb4a3693b2726d2897ad1d654ce9e19262122023ffed55dcb62'

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
