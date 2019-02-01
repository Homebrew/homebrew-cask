cask 'wechatwebdevtools' do
  version '1.02.1902010'
  sha256 '71bbdc0325f52a9cff976f008413642505e9156f36e022d26894b78a776a100f'

  url "https://dldir1.qq.com/WechatWebDev/#{version.major}.2.0/20#{version.patch}/wechat_devtools_#{version}.dmg"
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
