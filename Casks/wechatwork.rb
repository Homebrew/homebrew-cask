cask 'wechatwork' do
  version '3.0.24.2278'
  sha256 '2fa981ca5779e7cf5f3bf2bf13f3d81b2133b31d94496fff6fe5749dc9a7d71b'

  url "https://dldir1.qq.com/wework/work_weixin/WXWork_#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://work.weixin.qq.com/wework_admin/commdownload?platform=mac'
  name 'WeChat Work'
  name '企业微信'
  homepage 'https://work.weixin.qq.com/'

  app '企业微信.app'

  uninstall quit: 'com.tencent.WeWorkMac'
end
