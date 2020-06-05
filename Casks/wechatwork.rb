cask 'wechatwork' do
  version '3.0.23.2265'
  sha256 '440d5c1dab0a679f5d7991677ad3d26edcb013595a605a89a0ae633491ddfa98'

  url "https://dldir1.qq.com/wework/work_weixin/WXWork_#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://work.weixin.qq.com/wework_admin/commdownload?platform=mac'
  name 'WeChat Work'
  name '企业微信'
  homepage 'https://work.weixin.qq.com/'

  app '企业微信.app'

  uninstall quit: 'com.tencent.WeWorkMac'
end
