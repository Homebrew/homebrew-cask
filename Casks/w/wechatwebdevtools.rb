cask "wechatwebdevtools" do
  arch arm: "arm64", intel: "x64"

  version "2.01.2510260"
  sha256 arm:   "af540d7afd0a53b1c0c61db8477da51c400cf2950ba496012e4a8ef6cb89be96",
         intel: "d78f88e63c8722591b44865c460ad64792809a6a25f2b083d4678ca5674731df"

  url "https://dldir1.qq.com/WechatWebDev/release/be1ec64cf6184b0fa64091919793f068/wechat_devtools_#{version}_darwin_#{arch}.dmg"
  name "Wechat DevTools"
  name "微信开发者工具"
  desc "Wechat DevTools for Official Account and Mini Program development"
  homepage "https://developers.weixin.qq.com/miniprogram/dev/devtools/download.html"

  livecheck do
    url :homepage
    regex(%r{Stable\s*Build\s*</a>\s*\(v?(\d+(?:\.\d+)+)[)\s]}i)
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
