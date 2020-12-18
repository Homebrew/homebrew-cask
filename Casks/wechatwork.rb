cask "wechatwork" do
  version "3.0.40.2346"
  sha256 "ddeed7293c8251dfca8c4ba5d017498681053ca023707f59d3d903e1505b3a37"

  url "https://dldir1.qq.com/wework/work_weixin/WeCom_#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://work.weixin.qq.com/wework_admin/commdownload?platform=mac"
  name "WeChat Work"
  name "企业微信"
  homepage "https://work.weixin.qq.com/"

  app "企业微信.app"

  uninstall quit: "com.tencent.WeWorkMac"
end
