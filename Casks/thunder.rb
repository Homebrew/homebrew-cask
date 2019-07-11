cask 'thunder' do
  version '3.3.5.4090'
  sha256 '4e4353219f9cc281406e1aa7e6f2b3117f8004e2b6535080e49f58149f3e1974'

  # down.sandai.net was verified as official when first introduced to the cask
  url "http://down.sandai.net/mac/thunder_#{version}.dmg"
  appcast 'https://static-xl9-ssl.xunlei.com/json/mac_download_url.json'
  name 'Thunder'
  name '迅雷'
  homepage 'https://mac.xunlei.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Thunder.app'

  zap trash: [
               '~/Library/Application Support/Thunder',
               '~/Library/Caches/com.xunlei.Thunder',
               '~/Library/Caches/com.xunlei.XLPlayer',
               '~/Library/Cookies/com.xunlei.Thunder.binarycookies',
               '~/Library/Preferences/com.xunlei.Thunder.loginSDK.plist',
               '~/Library/Preferences/com.xunlei.Thunder.plist',
               '~/Library/Preferences/com.xunlei.XLPlayer.plist',
               '~/Library/Saved Application State/com.xunlei.Thunder.savedState',
               '~/Library/Saved Application State/com.xunlei.XLPlayer.savedState',
               '~/Library/WebKit/com.xunlei.Thunder',
             ]
end
