cask 'wechatwebdevtools' do
  version '0.14.140900,014140900'
  sha256 '64a6cade36208e1e60a70043bba899f15f97ededc3dbd6de7b84bfae4477e122'

  url "https://dldir1.qq.com/WechatWebDev/#{version.after_comma}/wechat_web_devtools_#{version.before_comma}.dmg"
  name 'wechat web devtools'
  homepage 'https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html'

  app 'wechatwebdevtools.app'
end
