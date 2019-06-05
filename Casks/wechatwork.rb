cask 'wechatwork' do
  version '2.8.5.2051'
  sha256 '6e2763596f4650f2f34ebfeaa6dbe747a2684633407ee7691a23b684e6395a53'

  url "https://dldir1.qq.com/foxmail/work_weixin/WXWork_#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://work.weixin.qq.com/wework_admin/commdownload?platform=mac'
  name 'WeChat Work'
  name '企业微信'
  homepage 'https://work.weixin.qq.com/'

  app '企业微信.app'

  uninstall quit: 'com.tencent.WeWorkMac'
end
