cask 'wechat-web-devtools' do
  version '0.7.0'
  sha256 '52e1015038e37ba1b6065de9e3e39c7de7a081ebc8c54ee254beb9ed248cded8'

  url "http://dldir1.qq.com/WechatWebDev/release/#{version}/wechat_web_devtools_#{version}.dmg"
  name 'wechat web devtools'
  name '微信web开发者工具'
  homepage 'https://mp.weixin.qq.com/wiki?t=resource/res_main&id=mp1455784140&token=&lang=zh_CN'
  license :commercial

  app '微信web开发者工具.app'
end
