cask "wechatwebdevtools" do
  arch arm: "arm64", intel: "x64"

  version "2.02.2608050"
  sha256 arm:   "7827ec918e2661b1a4abc137a7a1ed5afd1977dfbc3a4869cfc41ba1de25959b",
         intel: "90b4bc903cbe07a31f769f60011dcb2fe5625abbcd5e24d61f89f139c6d9d28a"

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
  depends_on macos: :big_sur

  app "wechatwebdevtools.app"

  zap trash: [
    "~/Library/Application Support/微信开发者工具",
    "~/Library/Caches/微信开发者工具",
    "~/Library/Preferences/com.tencent.webplusdevtools.plist",
    "~/Library/Preferences/com.tencent.wechat.devtools.plist",
    "~/Library/Saved Application State/com.tencent.wechat.devtools.savedState",
  ]
end
