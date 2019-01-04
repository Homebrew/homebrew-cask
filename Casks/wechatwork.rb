cask 'wechatwork' do
  version '2.7.0.1070'
  sha256 '5ab535fc19afe9404e9f9c4fb4025378b764146273a43b327ae698eb70ac10c1'

  url "https://dldir1.qq.com/foxmail/work_weixin/WXWork_#{version}.dmg"
  name 'WeChat Work'
  name '企业微信'
  homepage 'https://work.weixin.qq.com/'

  app '企业微信.app'

  uninstall quit: 'com.tencent.WeWorkMac'
end
