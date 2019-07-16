cask 'wechatwork' do
  version '2.8.8.2002'
  sha256 '06bf1c8205ef491ee9f8991b6ab4662723316f8eedd76cba7d35f9e42bd0c6b7'

  url "https://dldir1.qq.com/foxmail/work_weixin/WXWork_#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://work.weixin.qq.com/wework_admin/commdownload?platform=mac'
  name 'WeChat Work'
  name '企业微信'
  homepage 'https://work.weixin.qq.com/'

  app '企业微信.app'

  uninstall quit: 'com.tencent.WeWorkMac'
end
