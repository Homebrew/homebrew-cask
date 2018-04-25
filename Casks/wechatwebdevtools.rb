cask 'wechatwebdevtools' do
  version '1.02.1804120'
  sha256 '73c47fad32956afce280149e5e1f9db08223dc3de9857cee2ed087cb769ef397'

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
