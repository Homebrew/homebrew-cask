cask "wechat" do
  version "4.1.10.24,39588"
  sha256 "d88b86bba05bd0e4feb41f5057315990919fd41b84b86f36835bb83ba08b6d21"

  url "https://dldir1.qq.com/weixin/Universal/Mac/xWeChatMac_universal_#{version.csv.first}_#{version.csv.second}.dmg"
  name "WeChat for Mac"
  name "微信 Mac 版"
  desc "Free messaging and calling application"
  homepage "https://mac.weixin.qq.com/"

  # Some items in the Sparkle feed may not have a url, so it's necessary to
  # work with all of the items in the feed (not just the newest one).
  livecheck do
    url "https://dldir1.qq.com/weixin/mac/mac-release.xml"
    regex(/xWeChatMac[._-]universal[._-]v?(\d+(?:\.\d+)+)[._-](\d+)\.dmg/i)
    strategy :sparkle do |items, regex|
      items.map do |item|
        match = item.url.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "WeChat.app"

  uninstall quit: "com.tencent.xinWeChat"

  zap trash: [
    "~/Library/Application Scripts/$(TeamIdentifierPrefix)com.tencent.xinWeChat",
    "~/Library/Application Scripts/$(TeamIdentifierPrefix)com.tencent.xinWeChat.IPCHelper",
    "~/Library/Application Scripts/com.tencent.xinWeChat",
    "~/Library/Application Scripts/com.tencent.xinWeChat.MiniProgram",
    "~/Library/Application Scripts/com.tencent.xinWeChat.WeChatMacShare",
    "~/Library/Caches/com.tencent.xinWeChat",
    "~/Library/Containers/$(TeamIdentifierPrefix)com.tencent.xinWeChat.IPCHelper",
    "~/Library/Containers/com.tencent.xinWeChat",
    "~/Library/Containers/com.tencent.xinWeChat.MiniProgram",
    "~/Library/Containers/com.tencent.xinWeChat.WeChatMacShare",
    "~/Library/Cookies/com.tencent.xinWeChat.binarycookies",
    "~/Library/Group Containers/$(TeamIdentifierPrefix)com.tencent.xinWeChat",
    "~/Library/Preferences/com.tencent.xinWeChat.plist",
    "~/Library/Saved Application State/com.tencent.xinWeChat.savedState",
  ]
end
