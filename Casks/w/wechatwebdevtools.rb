cask "wechatwebdevtools" do
  arch arm: "arm64", intel: "x64"

  version "1.06.2407120"
  sha256 arm:   "2c92356a07c4285b7c776bcf5e4313c8de778468bc91212e91f25a97b7b1c120",
         intel: "b94cf8c3a9dbedd8f510f22a7f833a7042fa02e84f20a966862166f396320ec8"

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
