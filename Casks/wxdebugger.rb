cask 'wxdebugger' do
  version '0.3.0,20160222'
  sha256 '69aea6832240dad7ac01af39d81a20969fe5289742e7613adf9120a7ddfbd2a0'

  url "http://dldir1.qq.com/WechatWebDev/#{version.after_comma}/wxdebugger_#{version.before_comma}.dmg"
  name 'wxdebugger'
  name '微信web开发者工具'
  homepage 'http://mp.weixin.qq.com/wiki/10/e5f772f4521da17fa0d7304f68b97d7e.html'
  license :commercial

  app '微信web开发者工具.app'
end
