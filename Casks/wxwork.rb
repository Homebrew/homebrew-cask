cask 'wxwork' do
  version '2.1.2.3031'
  sha256 '2dbf00389de7f8a3233bc351b68cecdb22cc16e1d3b7ed1e09cb531238c4e266'

  url "https://dldir1.qq.com/foxmail/work_weixin/WXWork_#{version}.dmg"
  name 'Wechat Enterprise Version'
  name '企业微信'
  homepage 'https://work.weixin.qq.com/'

  app '企业微信.app'
end
