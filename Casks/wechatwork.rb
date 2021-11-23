cask "wechatwork" do
  version "3.1.20.90367"
  sha256 "842b97f80d1a7df8567a78ef1a0814c40c06bbd0285417f82fa1d2e5987363e1"

  url "https://dldir1.qq.com/wework/work_weixin/WeCom_#{version}.dmg"
  name "WeChat Work"
  name "企业微信"
  desc "Messaging and calling application"
  homepage "https://work.weixin.qq.com/"

  livecheck do
    url "https://work.weixin.qq.com/wework_admin/commdownload?platform=mac"
    strategy :header_match
  end

  auto_updates true

  app "企业微信.app"

  uninstall quit: "com.tencent.WeWorkMac"
end
