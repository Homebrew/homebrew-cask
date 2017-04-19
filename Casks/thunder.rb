cask 'thunder' do
  version '3.0.7.2812'
  sha256 '1fcb5416e8383d48571144fbe4bf969571701e36e2cc998baec162ca956b5d6a'

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
