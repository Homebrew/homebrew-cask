cask "wechatwebdevtools" do
  arch arm: "arm64", intel: "x64"

  version "1.06.2407110"
  sha256 arm:   "510919159a441bff2b12c7e85c33b1f6163eb86851bb0333d52b9d62bf3851df",
         intel: "70b04f2bc6b76ac2654a9d95c5d2eddaa5a5f45acf3ffce0017c08d0de44e674"

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
    "~/Library/Preferences/com.tencent.webplusdevtools.plist",
    "~/Library/Preferences/com.tencent.wechat.devtools.plist",
    "~/Library/Saved Application State/com.tencent.wechat.devtools.savedState",
  ]
end
