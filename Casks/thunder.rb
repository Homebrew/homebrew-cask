cask 'thunder' do
  version '3.2.0.3446'
  sha256 '285dd917a45d08ff92b40f3145fe70124279087eb2c0b5a43dadd6247cde9cbb'

  # down.sandai.net was verified as official when first introduced to the cask
  url "http://down.sandai.net/mac/thunder_#{version}.dmg"
  name 'Thunder'
  name '迅雷'
  homepage 'http://mac.xunlei.com/'

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
