cask 'thunder' do
  version '2.7.7.2318'
  sha256 '8e456706c038eacbe1974a0b6be48eb1a43f74c7dbca7c05e8fa0525acaafdaa'

  # down.sandai.net was verified as official when first introduced to the cask
  url "http://down.sandai.net/mac/thunder_dl#{version}_Beta.dmg"
  name 'Thunder'
  name '迅雷'
  homepage 'http://mac.xunlei.com/'

  depends_on macos: '>= :mavericks'

  app 'Thunder.app'

  zap delete: [
                '~/Library/Application Support/Thunder',
                '~/Library/Caches/com.xunlei.Thunder',
                '~/Library/Caches/com.xunlei.Thunder-Store',
                '~/Library/Cookies/com.xunlei.Thunder.binarycookies',
                '~/Library/Preferences/com.xunlei.Thunder-Store.plist',
                '~/Library/Preferences/com.xunlei.Thunder.plist',
                '~/Library/Saved Application State/com.Thunder.XLPlayer.savedState',
                '~/Library/Saved Application State/com.xunlei.Thunder-Store.savedState',
                '~/Library/Saved Application State/com.xunlei.Thunder.savedState',
              ]
end
