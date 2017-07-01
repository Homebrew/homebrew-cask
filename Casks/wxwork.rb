cask 'wxwork' do
  version '2.0.0.3010'
  sha256 'f983435254913ba369010c33496e805b56b9f2c811b16ff3c175bc7e1b271f3f'

  url "https://dldir1.qq.com/foxmail/work_weixin/WXWork_#{version}.dmg"
  name 'Wechat Enterprise Version'
  name '企业微信'
  homepage 'https://work.weixin.qq.com/'

  app '企业微信.app'
end
