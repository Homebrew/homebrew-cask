cask "wechatwork" do
  version "3.0.30.2300"
  sha256 "c704170ae24161d9e7538ca1f302e7e323cdb7c1bccc3d92a18a8867e928b439"

  url "https://dldir1.qq.com/wework/work_weixin/WXWork_#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://work.weixin.qq.com/wework_admin/commdownload?platform=mac"
  name "WeChat Work"
  name "企业微信"
  homepage "https://work.weixin.qq.com/"

  app "企业微信.app"

  uninstall quit: "com.tencent.WeWorkMac"
end
