cask 'wechatwebdevtools' do
  version '1.03.2005140'
  sha256 '7390bc33d42d4d2392dea44448904f193fc392f550119c7cf09ec81e6933107a'

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
