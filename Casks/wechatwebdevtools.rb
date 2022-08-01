cask "wechatwebdevtools" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.06.2207210"

  if Hardware::CPU.intel?
    sha256 "891ec7a5bf011b03e025d09f94b3c59f735d5fe8b29f980cc63b7754fe8c728c"
  else
    sha256 "e5def38681471079646a31897a0d9b6b0b07fc2145ffeadc134e79c80c2a9885"
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
