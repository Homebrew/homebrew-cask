cask "wechatwebdevtools" do
  arch arm: "arm64", intel: "x64"

  version "2.02.2608040"
  sha256 arm:   "d8f3f0dffc8dee3842926055fa9670d34c638352c078b9b1a606b290b9b3580c",
         intel: "6a0b06e7285da23ce1cb724c05f3a8feb87f0a68608410edc396e20f6119c06f"

  url "https://dldir1.qq.com/WechatWebDev/release/be1ec64cf6184b0fa64091919793f068/wechat_devtools_#{version}_darwin_#{arch}.dmg"
  name "Wechat DevTools"
  name "微信开发者工具"
  desc "Wechat DevTools for Official Account and Mini Program development"
  homepage "https://developers.weixin.qq.com/miniprogram/dev/devtools/download.html"

  livecheck do
    url "https://devtools.wxqcloud.qq.com.cn/WechatWebDev/nightly/versions/config.json"
    strategy :json do |json|
      stable = json["channels"]&.find { |channel| channel["id"] == "stable" }
      next unless stable

      stable["version"]
    end
  end

  auto_updates true
  depends_on :macos

  app "wechatwebdevtools.app"

  zap trash: [
    "~/Library/Application Support/微信开发者工具",
    "~/Library/Caches/微信开发者工具",
    "~/Library/Preferences/com.tencent.webplusdevtools.plist",
    "~/Library/Preferences/com.tencent.wechat.devtools.plist",
    "~/Library/Saved Application State/com.tencent.wechat.devtools.savedState",
  ]
end
