cask "wechatwebdevtools" do
  arch arm: "arm64", intel: "x64"

  version "2.01.2510270"
  sha256 arm:   "6c09661a9073d3ccb0162892effe28f74280cb3528f7a2d37cda934fa52ff848",
         intel: "266c68d3df2fa32e3af013ba5c2fcff215617ba39c0343efcd63c08fd9d08711"

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

  app "wechatwebdevtools.app"

  zap trash: [
    "~/Library/Application Support/微信开发者工具",
    "~/Library/Caches/微信开发者工具",
    "~/Library/Preferences/com.tencent.webplusdevtools.plist",
    "~/Library/Preferences/com.tencent.wechat.devtools.plist",
    "~/Library/Saved Application State/com.tencent.wechat.devtools.savedState",
  ]
end
