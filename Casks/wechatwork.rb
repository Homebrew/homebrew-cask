cask "wechatwork" do
  version "3.0.28.2286"
  sha256 "59c035ed884b692762a73aac41a052d0e61fe8aab34185f40c71f5e070284d7d"

  url "https://dldir1.qq.com/wework/work_weixin/WXWork_#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://work.weixin.qq.com/wework_admin/commdownload?platform=mac"
  name "WeChat Work"
  name "企业微信"
  homepage "https://work.weixin.qq.com/"

  app "企业微信.app"

  uninstall quit: "com.tencent.WeWorkMac"
end
