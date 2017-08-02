cask 'wechatwebdevtools' do
  version '0.20.191900'
  sha256 '5b72cc4383e8f0776e57ac31127bd3ff05b3d1113a6571cb58005a0d5961e5e7'

  url "https://dldir1.qq.com/WechatWebDev/#{version.no_dots}/wechat_web_devtools_#{version}.dmg"
  name 'wechat web devtools'
  homepage 'https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html'

  app 'wechatwebdevtools.app'
end
