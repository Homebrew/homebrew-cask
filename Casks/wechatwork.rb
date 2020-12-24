cask "wechatwork" do
  version "3.1.0.2353"
  sha256 "cb50dbdaf5bc55846be4c5b1537a4cc752aeebc370d84584bf7ac04371433419"

  url "https://dldir1.qq.com/wework/work_weixin/WeCom_#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://work.weixin.qq.com/wework_admin/commdownload?platform=mac"
  name "WeChat Work"
  name "企业微信"
  homepage "https://work.weixin.qq.com/"

  app "企业微信.app"

  uninstall quit: "com.tencent.WeWorkMac"
end
