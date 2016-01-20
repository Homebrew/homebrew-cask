cask 'wxdebugger' do
  version '0.1.0'
  sha256 '10a27856a0eccacc4e105a27bae9e8ed63e50ecc3aa4af9d9016d3657411fb4c'

  url "http://dldir1.qq.com/WechatWebDev/0111/wxdebugger_#{version}.dmg"
  name 'wxdebugger'
  name '微信web开发者工具'
  homepage 'http://mp.weixin.qq.com/wiki/10/e5f772f4521da17fa0d7304f68b97d7e.html'
  license :commercial

  app '微信web开发者工具.app'
end
