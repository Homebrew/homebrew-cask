cask 'thunder' do
  version '3.1.3.3106'
  sha256 '9792b2f316c360fd258eceba3d78c9a480206480bf4e241ccaa6358e2f281f12'

  # down.sandai.net was verified as official when first introduced to the cask
  url "http://down.sandai.net/mac/thunder_#{version}.dmg"
  name 'Thunder'
  name '迅雷'
  homepage 'http://mac.xunlei.com/'

  depends_on macos: '>= :yosemite'

  app 'Thunder.app'

  zap delete: [
                '~/Library/Caches/com.xunlei.Thunder',
                '~/Library/Caches/com.xunlei.XLPlayer',
                '~/Library/Cookies/com.xunlei.Thunder.binarycookies',
                '~/Library/Saved Application State/com.xunlei.Thunder.savedState',
                '~/Library/Saved Application State/com.xunlei.XLPlayer.savedState',
                '~/Library/WebKit/com.xunlei.Thunder',
              ],
      trash:  [
                '~/Library/Application Support/Thunder',
                '~/Library/Preferences/com.xunlei.Thunder.loginSDK.plist',
                '~/Library/Preferences/com.xunlei.Thunder.plist',
                '~/Library/Preferences/com.xunlei.XLPlayer.plist',
              ]
end
