cask 'wechatwork' do
  version '2.8.5.2046'
  sha256 'd3cf16298625d3e35b0bb3d0de406a2e847c46ec9e13a110b78e76e2f2b50d05'

  url "https://dldir1.qq.com/foxmail/work_weixin/WXWork_#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://work.weixin.qq.com/wework_admin/commdownload?platform=mac'
  name 'WeChat Work'
  name '企业微信'
  homepage 'https://work.weixin.qq.com/'

  app '企业微信.app'

  uninstall quit: 'com.tencent.WeWorkMac'
end
