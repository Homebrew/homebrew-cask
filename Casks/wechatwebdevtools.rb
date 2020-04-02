cask 'wechatwebdevtools' do
  version '1.02.2004020'
  sha256 '5f784d9fd9df4fcecbb476da403612e7fb2e560e848fcc02f3ee875030b466e5'

  url "https://dldir1.qq.com/WechatWebDev/nightly/p-ae42ee2cde4d42ee80ac60b35f183a99/wechat_devtools_#{version}.dmg"
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
