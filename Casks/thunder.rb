cask 'thunder' do
  version '3.2.4.3658'
  sha256 '10bfc0a4a00e022f465ecc1f5bcc89b793704273330c3217ca957370f2c03db1'

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
