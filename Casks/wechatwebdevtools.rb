cask 'wechatwebdevtools' do
  version '0.17.170800'
  sha256 'abd3c1d113138e98026b40dbf6e654548e1f687087553340b5efd0cf9976cacf'

  url "https://dldir1.qq.com/WechatWebDev/#{version.no_dots}/wechat_web_devtools_#{version}.dmg"
  name 'wechat web devtools'
  homepage 'https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html'

  app 'wechatwebdevtools.app'
end
