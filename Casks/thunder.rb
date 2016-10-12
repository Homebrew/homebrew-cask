cask 'thunder' do
  version '2.7.6.2272'
  sha256 'b7300bd2f530cc69c61465d5745989e73983cea8d481d7d574508ce128076f4c'

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
                '~/Library/Cookies/com.xunlei.Thunder.binarycookies',
                '~/Library/Preferences/com.xunlei.Thunder.plist',
                '~/Library/Saved Application State/com.xunlei.Thunder.savedState',
              ]
end
