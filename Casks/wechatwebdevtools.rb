cask 'wechatwebdevtools' do
  version '1.02.1808300'
  sha256 'e3a51906a837733b179b464e0b9ebdfcf5a8c34ea0f6f46985cfa3a2ff2976f7'

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
