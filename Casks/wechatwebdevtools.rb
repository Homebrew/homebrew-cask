cask "wechatwebdevtools" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.06.2206090"

  if Hardware::CPU.intel?
    sha256 "4e1fa9eb409e401271093faabe49f430ec9cefeb1746ba1254d633fc50440832"
  else
    sha256 "449b3e58408ef36f986a27a51261a98aaf65dffc952da71ccb11eb2612f3506d"
  end

  url "https://dldir1.qq.com/WechatWebDev/release/be1ec64cf6184b0fa64091919793f068/wechat_devtools_#{version}_darwin_#{arch}.dmg"
  name "Wechat DevTools"
  name "微信开发者工具"
  desc "Wechat DevTools for Official Account and Mini Program development"
  homepage "https://developers.weixin.qq.com/miniprogram/dev/devtools/download.html"

  livecheck do
    url "https://developers.weixin.qq.com/miniprogram/dev/devtools/download.html"
    regex(%r{Stable\s+Build</a>\s*\((\d+(?:\.\d+)+)}i)
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
