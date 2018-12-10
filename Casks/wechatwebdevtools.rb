cask 'wechatwebdevtools' do
  version '1.02.1811290'
  sha256 'd429969c90f5e2b9180df11834dd43141a31fead0b44024042f17ec21bf14190'

  url "https://dldir1.qq.com/WechatWebDev/#{version.major}.0.0/bb9c1558bb234f98b0a5558bcb629fa8/wechat_devtools_#{version}.dmg"
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
