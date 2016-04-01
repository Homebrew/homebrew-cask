cask 'wxdebugger' do
  version '0.4.0'
  sha256 'f9c91dd30c89bcc9b376a89dab2ea7e129fca54cf1889ecb6d24f13f5d565f44'

  url "http://dldir1.qq.com/WechatWebDev/#{version}/wxdebugger_#{version}.dmg"
  name 'wxdebugger'
  name '微信web开发者工具'
  homepage 'http://mp.weixin.qq.com/wiki/10/e5f772f4521da17fa0d7304f68b97d7e.html'
  license :commercial

  app '微信web开发者工具.app'
end
