cask 'thunder' do
  version '3.0.2.2636'
  sha256 'cae90425a2affc47cdef16e50f7b2e833459d2b3f4662841cf8a060456d5c874'

  # down.sandai.net was verified as official when first introduced to the cask
  url "http://down.sandai.net/mac/thunder_dl#{version}_Beta.dmg"
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
