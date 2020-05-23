cask 'wechatwork' do
  version '3.0.21.2258'
  sha256 'b7b87e694fb44cb1bfa51e73b185973f44d39d676c2d5ad2736afb02c67dc9d6'

  url "https://dldir1.qq.com/wework/work_weixin/WXWork_#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://work.weixin.qq.com/wework_admin/commdownload?platform=mac'
  name 'WeChat Work'
  name '企业微信'
  homepage 'https://work.weixin.qq.com/'

  app '企业微信.app'

  uninstall quit: 'com.tencent.WeWorkMac'
end
