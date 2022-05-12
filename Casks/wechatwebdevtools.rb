cask "wechatwebdevtools" do
  version "1.05.2204250"
  sha256 "d46828cfa36bc0a084503f671e6f3bdfde6031f4b73e90c5dc9e8dae9d62c559"

  url "https://dldir1.qq.com/WechatWebDev/release/p-ae42ee2cde4d42ee80ac60b35f183a99/wechat_devtools_#{version}.dmg"
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
