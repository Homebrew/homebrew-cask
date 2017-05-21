cask 'wechatwebdevtools' do
  version '0.17.171900'
  sha256 '9d9987aa662e7a203ac8f0891b19803b77e355c490c4b1ae1620ede32f7db482'

  url "https://dldir1.qq.com/WechatWebDev/#{version.no_dots}/wechat_web_devtools_#{version}.dmg"
  name 'wechat web devtools'
  homepage 'https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html'

  app 'wechatwebdevtools.app'
end
