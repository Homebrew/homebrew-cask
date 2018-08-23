cask 'wechatwebdevtools' do
  version '1.10.1807230,1807300'
  sha256 'd66703a8ab24c5f9f1bcb2ed63e0baf365a7aa96ff03400d9815c4d942bbea32'

  url "https://dldir1.qq.com/WechatWebDev/#{version.major}.0.0/20#{version.after_comma}/wechat_devtools_#{version.before_comma}.dmg"
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
