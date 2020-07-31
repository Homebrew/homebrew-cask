cask "wechatwork" do
  version "3.0.26.2273"
  sha256 "0a792fd3a3187857c4f0910aa7237435b0987d2b0f64272f65a8eee957c8115b"

  url "https://dldir1.qq.com/wework/work_weixin/WXWork_#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://work.weixin.qq.com/wework_admin/commdownload?platform=mac"
  name "WeChat Work"
  name "企业微信"
  homepage "https://work.weixin.qq.com/"

  app "企业微信.app"

  uninstall quit: "com.tencent.WeWorkMac"
end
