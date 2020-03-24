cask 'thunder' do
  version '3.4.0.4338'
  sha256 '2f8d60050084687c9abac55a40e2c314791e8c448b11c6e07902af4e281bef1f'

  # down.sandai.net was verified as official when first introduced to the cask
  url "https://down.sandai.net/mac/thunder_#{version}.dmg"
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
