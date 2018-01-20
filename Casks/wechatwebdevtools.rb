cask 'wechatwebdevtools' do
  version '1.01.1712150'
  sha256 '780d676e9197b18c669bf1c807130559e92892064c84512c815e73ff8f04ec4a'

  url "https://dldir1.qq.com/WechatWebDev/1.0.0/20#{version.patch}/wechat_devtools_#{version}.dmg"
  name 'wechat web devtools'
  homepage 'https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html'

  app 'wechatwebdevtools.app'
end
