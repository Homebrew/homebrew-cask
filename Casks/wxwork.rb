cask 'wxwork' do
  version '1.3.0.2300'
  sha256 '6a7415f0d60e2f898a42b97d814e83f5538df306f92f5dcaf672e8f3d6de0503'

  url "https://dldir1.qq.com/foxmail/work_weixin/WXWork_#{version}.dmg"
  name 'Wechat Enterprise Version'
  name '企业微信'
  homepage 'https://work.weixin.qq.com/'

  app '企业微信.app'
end
