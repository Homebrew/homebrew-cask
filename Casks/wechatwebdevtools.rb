cask 'wechatwebdevtools' do
  version '1.01.1711160'
  sha256 'db99b31ff22c6351427bfc54fc1d99441e368025ea498b9a1e917693e55ff643'

  url "https://dldir1.qq.com/WechatWebDev/1.0.0/20#{version.patch}/wechat_devtools_#{version}.dmg"
  name 'wechat web devtools'
  homepage 'https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html'

  app 'wechatwebdevtools.app'
end
