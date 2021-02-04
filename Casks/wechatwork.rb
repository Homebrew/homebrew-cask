cask "wechatwork" do
  version "3.1.2.2364"
  sha256 "33d600d1651e55005ab9cf955190f098668e56968d1395a1d87e2563d345ca0f"

  url "https://dldir1.qq.com/wework/work_weixin/WeCom_#{version}.dmg"
  name "WeChat Work"
  name "企业微信"
  desc "Business communication and office collaboration tool"
  homepage "https://work.weixin.qq.com/"

  livecheck do
    url "https://work.weixin.qq.com/wework_admin/commdownload?platform=mac"
    strategy :header_match
  end

  app "企业微信.app"

  uninstall quit: "com.tencent.WeWorkMac"
end
