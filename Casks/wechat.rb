cask "wechat" do
  version :latest
  sha256 :no_check

  url "https://dldir1.qq.com/weixin/mac/WeChatMac.dmg"
  name "WeChat for Mac"
  name "微信 Mac 版"
  desc "Free messaging and calling application"
  homepage "https://mac.weixin.qq.com/"

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
