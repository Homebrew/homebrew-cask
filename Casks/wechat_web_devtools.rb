cask 'wechat_web_devtools' do
  version '0.5.0'
  sha256 '74bf1cf84616ac5abb7df91f2c64b23c6370d8a5eeca178c64f148e9b0a8ff15'

  url "http://dldir1.qq.com/WechatWebDev/release/#{version}/wechat_web_devtools_#{version}.dmg"
  name 'wechat_web_devtools'
  name '微信web开发者工具'
  homepage 'https://mp.weixin.qq.com/wiki?t=resource/res_main&id=mp1455784140&token=&lang=zh_CN'
  license :commercial

  app '微信web开发者工具.app'
end
