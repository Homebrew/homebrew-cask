cask "wechat" do
  version "2.5.0.18"
  sha256 "b6b8a71ed623ce0ee6c941b2a03d80c8937ac142279dbc95dd01fedc32321986"

  url "https://dldir1.qq.com/weixin/mac/WeChatMac.dmg"
  appcast "https://dldir1.qq.com/weixin/mac/mac-release.xml"
  name "WeChat for Mac"
  name "微信 Mac 版"
  desc "Free messaging and calling application"
  homepage "https://mac.weixin.qq.com/"

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "WeChat.app"

  uninstall quit: "com.tencent.xinWeChat"

  zap trash: [
    "~/Library/Application Scripts/com.tencent.xinWeChat",
    "~/Library/Caches/com.tencent.xinWeChat",
    "~/Library/Containers/com.tencent.xinWeChat",
    "~/Library/Cookies/com.tencent.xinWeChat.binarycookies",
    "~/Library/Group Containers/$(TeamIdentifierPrefix)com.tencent.xinWeChat",
    "~/Library/Preferences/com.tencent.xinWeChat.plist",
  ]
end
