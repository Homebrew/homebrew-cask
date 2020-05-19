cask 'wechatwork' do
  version '3.0.21.2256'
  sha256 'd15f73ac258dd311a91788cb0bd2eaffe3006d41edc373da451f3986401987de'

  url "https://dldir1.qq.com/wework/work_weixin/WXWork_#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://work.weixin.qq.com/wework_admin/commdownload?platform=mac'
  name 'WeChat Work'
  name '企业微信'
  homepage 'https://work.weixin.qq.com/'

  app '企业微信.app'

  uninstall quit: 'com.tencent.WeWorkMac'
end
