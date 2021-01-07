cask "wechatwork" do
  version "3.1.1.2358"
  sha256 "a2c3935b363b333ec1b5f683edc35308a250a5734ecd5dfe8e23ca19257d69c4"

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
