cask "wechatwork" do
  version "3.0.27.2279"
  sha256 "384311218d0a85175b615cf3476f90cc2700bfbf7426252a58bd87ce0c2af967"

  url "https://dldir1.qq.com/wework/work_weixin/WXWork_#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://work.weixin.qq.com/wework_admin/commdownload?platform=mac"
  name "WeChat Work"
  name "企业微信"
  homepage "https://work.weixin.qq.com/"

  app "企业微信.app"

  uninstall quit: "com.tencent.WeWorkMac"
end
