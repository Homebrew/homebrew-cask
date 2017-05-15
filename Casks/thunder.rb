cask 'thunder' do
  version '3.0.9.2892'
  sha256 '5797fe79fc689a6811c44fbd82f70bf7c1b3d66d9f2c5efe7f0bab422cf5ccdd'

  # down.sandai.net was verified as official when first introduced to the cask
  url "http://down.sandai.net/mac/thunder_#{version}.dmg"
  name 'Thunder'
  name '迅雷'
  homepage 'http://mac.xunlei.com/'

  depends_on macos: '>= :yosemite'

  app 'Thunder.app'

  zap delete: [
                '~/Library/Application Support/Thunder',
                '~/Library/Caches/com.xunlei.Thunder',
                '~/Library/Caches/com.xunlei.XLPlayer',
                '~/Library/Cookies/com.xunlei.Thunder.binarycookies',
                '~/Library/Preferences/com.xunlei.Thunder.loginSDK.plist',
                '~/Library/Preferences/com.xunlei.Thunder.plist',
                '~/Library/Preferences/com.xunlei.XLPlayer.plist',
                '~/Library/Saved Application State/com.xunlei.Thunder.savedState',
                '~/Library/Saved Application State/com.xunlei.XLPlayer.savedState',
              ]
end
