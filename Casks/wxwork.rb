cask 'wxwork' do
  version '1.3.5.1001'
  sha256 'e3d99a4985d36b927aa067d39930e75099449f8fea2584654ec7e097ef577fe4'

  url "https://dldir1.qq.com/foxmail/work_weixin/WXWork_#{version}.dmg"
  name 'Wechat Enterprise Version'
  name '企业微信'
  homepage 'https://work.weixin.qq.com/'

  app '企业微信.app'
end
