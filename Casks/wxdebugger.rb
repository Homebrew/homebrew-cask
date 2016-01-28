cask 'wxdebugger' do
  version '0.2.0,20160122'
  sha256 '84a3af9a7752f5e9b2f04733a95ccf3b17a1306af665eb95e0ece94124d4d792'

  url "http://dldir1.qq.com/WechatWebDev/#{version.after_comma}/wxdebugger_#{version.before_comma}.dmg"
  name 'wxdebugger'
  name '微信web开发者工具'
  homepage 'http://mp.weixin.qq.com/wiki/10/e5f772f4521da17fa0d7304f68b97d7e.html'
  license :commercial

  app '微信web开发者工具.app'
end
