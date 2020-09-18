cask "wechatwork" do
  version "3.0.31.2308"
  sha256 "203a478fccfab40f8881256ab825450b108af20c5dc021fc1dd3ceefccec91c2"

  url "https://dldir1.qq.com/wework/work_weixin/WXWork_#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://work.weixin.qq.com/wework_admin/commdownload?platform=mac"
  name "WeChat Work"
  name "企业微信"
  homepage "https://work.weixin.qq.com/"

  app "企业微信.app"

  uninstall quit: "com.tencent.WeWorkMac"
end
