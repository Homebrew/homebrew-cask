cask 'wechatwebdevtools' do
  version '1.02.1809260'
  sha256 'd630b9a7b87c2b1b0f7a7824da49edb46ccac8a22a45f1dd2724dbbc155848d2'

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
