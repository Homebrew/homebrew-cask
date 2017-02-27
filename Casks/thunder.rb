cask 'thunder' do
  version '3.0.4.2714'
  sha256 '01697b43164b856e8c5bb19810d4a18f7355f64317ae1558c91064bc6c0f0aa5'

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
                '~/Library/Caches/com.xunlei.swjsq',
                '~/Library/Cookies/com.xunlei.Thunder.binarycookies',
                '~/Library/Preferences/com.xunlei.Thunder.plist',
                '~/Library/Saved Application State/com.xunlei.Thunder.savedState',
                '~/Library/Saved Application State/com.xunlei.XLPlayer.savedState',
              ]
end
