cask 'wechatwork' do
  version '3.0.8.2074'
  sha256 '06bf5d6d7f939d8bfa863ba033ac243d4e2ea6a172cc8a7b55c525264cb6efe0'

  url "https://dldir1.qq.com/wework/work_weixin/WXWork_#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://work.weixin.qq.com/wework_admin/commdownload?platform=mac'
  name 'WeChat Work'
  name '企业微信'
  homepage 'https://work.weixin.qq.com/'

  app '企业微信.app'

  uninstall quit: 'com.tencent.WeWorkMac'
end
