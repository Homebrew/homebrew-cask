cask 'wechat-work' do
  version '2.7.0.1069'
  sha256 'd2bca45b17aedb25388acc7cc15065ceae66f9a63b0e856bc9285e31ca8fc960'

  url "https://dldir1.qq.com/foxmail/work_weixin/WXWork_#{version}.dmg"
  name 'WeChat Work'
  name '企业微信'
  homepage 'https://work.weixin.qq.com/'

  app '企业微信.app'

  uninstall quit: 'com.tencent.WeWorkMac'
end
