cask 'wechatwebdevtools' do
  version '1.02.1904090'
  sha256 'c5562009effa60f077e2cfc45baa6452f3a78f7a9220e4bd38e1f871c49b0216'

  url "https://dldir1.qq.com/WechatWebDev/#{version.major}.2.0/20#{version.patch}/wechat_devtools_#{version}.dmg"
  appcast 'https://developers.weixin.qq.com/miniprogram/dev/devtools/stable.html'
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
