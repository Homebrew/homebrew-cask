cask "wechatwebdevtools" do
  arch arm: "arm64", intel: "x64"

  version "1.06.2307250"
  sha256 arm:   "9816b04ec3726cc5a14359f969090a464732846efce25728c7b6d29bd78fc76d",
         intel: "337da50e7188b4fd4f4a70bf6515978a9fc506b0cc5700c76c754fb406205d65"

  url "https://dldir1.qq.com/WechatWebDev/release/be1ec64cf6184b0fa64091919793f068/wechat_devtools_#{version}_darwin_#{arch}.dmg"
  name "Wechat DevTools"
  name "微信开发者工具"
  desc "Wechat DevTools for Official Account and Mini Program development"
  homepage "https://developers.weixin.qq.com/miniprogram/dev/devtools/download.html"

  livecheck do
    url "https://developers.weixin.qq.com/miniprogram/dev/devtools/stable.html"
    regex(/a>\s(\d(?:\.\d+)+)\s</i)
  end

  auto_updates true

  app "wechatwebdevtools.app"

  zap trash: [
    "~/Library/Application Support/微信开发者工具",
    "~/Library/Caches/微信开发者工具",
    "~/Library/Preferences/com.tencent.wechat.devtools.plist",
    "~/Library/Preferences/com.tencent.webplusdevtools.plist",
    "~/Library/Saved Application State/com.tencent.wechat.devtools.savedState",
  ]
end
