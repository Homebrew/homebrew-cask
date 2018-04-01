cask 'wechatwebdevtools' do
  version '1.02.1802270'
  sha256 'dd1f1b17bc2f0c68ef3d0c0590a68cec135e8d01fb6e717613aeccf5232e9f50'

  url "https://dldir1.qq.com/WechatWebDev/1.0.0/20#{version.patch}/wechat_devtools_#{version}.dmg"
  name 'wechat web devtools'
  homepage 'https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html'

  app 'wechatwebdevtools.app'
end
