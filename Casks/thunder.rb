cask 'thunder' do
  version '2.7.8.2358'
  sha256 'b99df5898a14744757884c6031ad508ad985131117348cee60279c3929199fc0'

  # down.sandai.net was verified as official when first introduced to the cask
  url "http://down.sandai.net/mac/thunder_dl#{version}_Beta.dmg"
  name 'Thunder'
  name '迅雷'
  homepage 'http://mac.xunlei.com/'

  depends_on macos: '>= :mavericks'

  app 'Thunder.app'

  zap delete: [
                '~/Library/Application Support/Thunder',
                '~/Library/Caches/com.Thunder.XLPlayer',
                '~/Library/Caches/com.xunlei.Thunder',
                '~/Library/Caches/com.xunlei.Thunder-Store',
                '~/Library/Cookies/com.xunlei.Thunder-Store.binarycookies',
                '~/Library/Cookies/com.xunlei.Thunder.binarycookies',
                '~/Library/Preferences/com.xunlei.Thunder-Store.plist',
                '~/Library/Preferences/com.xunlei.Thunder.plist',
                '~/Library/Saved Application State/com.Thunder.XLPlayer.savedState',
                '~/Library/Saved Application State/com.xunlei.Thunder-Store.savedState',
                '~/Library/Saved Application State/com.xunlei.Thunder.savedState',
              ]
end
