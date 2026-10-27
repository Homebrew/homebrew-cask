cask "wechatwebdevtools" do
  arch arm: "arm64", intel: "x64"

  version "2.02.2609240"
  sha256 arm:   "16f1f876792bf5aa277fdd8dfc42edbc857277865741b18075c2e3a498027e6a",
         intel: "1135f929a52297086e83cc3a198293a0416a3e92d09d0264cd848e10e15d1d0c"

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
