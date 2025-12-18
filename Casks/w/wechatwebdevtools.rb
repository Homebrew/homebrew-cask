cask "wechatwebdevtools" do
  arch arm: "arm64", intel: "x64"

  version "2.01.2510250"
  sha256 arm:   "516baf0375f03b1b618eb004953fe6811819abf03bbc3d187a8bc1b52530e6fd",
         intel: "8786b5fcd36e37ec9bb44d8760c0dd5324a2412c7fc3dfc2ac87702ac576ddc2"

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
