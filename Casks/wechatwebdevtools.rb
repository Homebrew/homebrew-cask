cask "wechatwebdevtools" do
  arch arm: "arm64", intel: "x64"

  version "1.06.2306010"
  sha256 arm:   "b21ed4db180e7a6083267e99b428e6d28976c85c99de903cb99923bcbfa52c02",
         intel: "dda9848029edae6774ab04aacc48def60a2c7c8ab82d689b96f7c8c2b532109a"

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
