cask "wechatwebdevtools" do
  arch arm: "arm64", intel: "x64"

  version "1.06.2504050"
  sha256 arm:   "e7fc641f173b832c13a02ea2cdac19b59cf96c64f842bfc4604d2e920e926296",
         intel: "77529661c06c6b3c43bd605df60a828f292dee2a9a4c46123e15b9c0dd377cf6"

  url "https://dldir1.qq.com/WechatWebDev/release/be1ec64cf6184b0fa64091919793f068/wechat_devtools_#{version}_darwin_#{arch}.dmg"
  name "Wechat DevTools"
  name "微信开发者工具"
  desc "Wechat DevTools for Official Account and Mini Program development"
  homepage "https://developers.weixin.qq.com/miniprogram/dev/devtools/download.html"

  livecheck do
    url "https://developers.weixin.qq.com/miniprogram/dev/devtools/download.html"
    regex(%r{Stable\s*Build\s*</a>\s*\(v?(\d+(?:\.\d+)+)[) ]}i)
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
