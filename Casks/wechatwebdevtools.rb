cask 'wechatwebdevtools' do
  version '1.02.1812180'
  sha256 '85472ef3258f95c822c0981ee4c82c34175abdab01406b4ab514b767d464b163'

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
