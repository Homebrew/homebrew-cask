cask 'wechatwork' do
  version '2.8.2.2028'
  sha256 '46040636932d4adac9b9064e858722baf7791f20ab01c0310181939af56aa03b'

  url "https://dldir1.qq.com/foxmail/work_weixin/WXWork_#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://work.weixin.qq.com/wework_admin/commdownload?platform=mac'
  name 'WeChat Work'
  name '企业微信'
  homepage 'https://work.weixin.qq.com/'

  app '企业微信.app'

  uninstall quit: 'com.tencent.WeWorkMac'
end
