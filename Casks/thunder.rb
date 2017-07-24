cask 'thunder' do
  version '3.1.1.3012'
  sha256 '39e93dd5eb1e5ce48630713aac457c8667f4871529e72ea963b45e8a3ff9fee0'

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
