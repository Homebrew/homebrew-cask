cask "wechatwebdevtools" do
  arch arm: "arm64", intel: "x64"

  version "1.06.2504040"
  sha256 arm:   "422b5d810779865e2e18838fd33001d7db93400ef5533a82acc3b41a98e12149",
         intel: "0be4eefbaa6e8f607724891dde534ba4059ee4edabb884c1eb49e12ba35290d2"

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
