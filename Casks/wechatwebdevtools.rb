cask 'wechatwebdevtools' do
  version '1.01.1712070'
  sha256 '1026395301e07917c759021b815055052f2057a061d3d48a3be0d92adc059c6e'

  url "https://dldir1.qq.com/WechatWebDev/1.0.0/20#{version.patch}/wechat_devtools_#{version}.dmg"
  name 'wechat web devtools'
  homepage 'https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html'

  app 'wechatwebdevtools.app'
end
