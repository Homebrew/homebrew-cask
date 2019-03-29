cask 'wechatwork' do
  version '2.7.8.2009'
  sha256 '855a6b7887fc44522bda222cf7c1acf596002bd6acc4a22b8aa728ee32079c81'

  url "https://dldir1.qq.com/foxmail/work_weixin/WXWork_#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://work.weixin.qq.com/wework_admin/commdownload?platform=mac'
  name 'WeChat Work'
  name '企业微信'
  homepage 'https://work.weixin.qq.com/'

  app '企业微信.app'

  uninstall quit: 'com.tencent.WeWorkMac'
end
