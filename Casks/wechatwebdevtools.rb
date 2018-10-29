cask 'wechatwebdevtools' do
  version '1.02.1810250'
  sha256 '1ceaedc36d070e788e3ceaa8d2b0047f876f559154d5c4f869c65e52920ece43'

  url "https://dldir1.qq.com/WechatWebDev/#{version.major}.0.0/20#{version.patch}/wechat_devtools_#{version}.dmg"
  name 'wechat web devtools'
  name '微信web开发者工具'
  homepage 'https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html'

  app 'wechatwebdevtools.app'

  zap trash: [
               '~/Library/Application Support/微信web开发者工具',
               '~/Library/Caches/微信web开发者工具',
               '~/Library/Preferences/com.tencent.wechat.devtools.plist',
               '~/Library/Saved Application State/com.tencent.wechat.devtools.savedState',
             ]
end
