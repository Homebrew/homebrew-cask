cask "wechatwork" do
  version "3.1.6.90123"
  sha256 "6175e372ec13b974cbca8c04bfef16efc3c93f9d3be102b919a2568f8815d860"

  url "https://dldir1.qq.com/wework/work_weixin/WeCom_#{version}.dmg"
  name "WeChat Work"
  name "企业微信"
  homepage "https://work.weixin.qq.com/"

  livecheck do
    url "https://work.weixin.qq.com/wework_admin/commdownload?platform=mac"
    strategy :header_match
  end

  app "企业微信.app"

  uninstall quit: "com.tencent.WeWorkMac"
end
