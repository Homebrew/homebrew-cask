cask "wechatwork" do
  version "3.1.6.90132"
  sha256 "eabb68388b061eabceb159cf65ae9b20ca6d4939d5ac1e6f786d7fb8672946d6"

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
