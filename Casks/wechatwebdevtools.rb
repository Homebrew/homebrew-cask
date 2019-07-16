cask 'wechatwebdevtools' do
  version '1.02.1907160'
  sha256 '94aaa7e251aa976e00f78c8571d0d9a38b8c9bee9d811ba38353426262166024'

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
