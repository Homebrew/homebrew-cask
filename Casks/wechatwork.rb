cask "wechatwork" do
  version "3.1.0.2350"
  sha256 "06d89cbddc0b3298a19814626571b600693e1c0e226f09df770fdb2dd566a094"

  url "https://dldir1.qq.com/wework/work_weixin/WeCom_#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://work.weixin.qq.com/wework_admin/commdownload?platform=mac"
  name "WeChat Work"
  name "企业微信"
  homepage "https://work.weixin.qq.com/"

  app "企业微信.app"

  uninstall quit: "com.tencent.WeWorkMac"
end
