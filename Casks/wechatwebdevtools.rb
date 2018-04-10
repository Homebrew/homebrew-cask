cask 'wechatwebdevtools' do
  version '1.02.1803210'
  sha256 '7390bc33d42d4d2392dea44448904f193fc392f550119c7cf09ec81e6933107a'

  url "https://dldir1.qq.com/WechatWebDev/1.0.0/20#{version.patch}/wechat_devtools_#{version}.dmg"
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
