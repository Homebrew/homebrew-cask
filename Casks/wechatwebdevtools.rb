cask "wechatwebdevtools" do
  version "1.05.2111300"
  sha256 "f2737a369bf43818102787ef29a18e2a77c0baf193c564698d8b7d08a660ad81"

  url "https://dldir1.qq.com/WechatWebDev/release/p-ae42ee2cde4d42ee80ac60b35f183a99/wechat_devtools_#{version}.dmg"
  name "wechat web devtools"
  name "微信web开发者工具"
  desc "Weixin DevTools for Official Account and Mini Program development"
  homepage "https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html"

  livecheck do
    url "https://developers.weixin.qq.com/miniprogram/dev/devtools/download.html"
    regex(%r{Stable\s+Build</a>\s*\((\d+(?:\.\d+)+)}i)
  end

  auto_updates true

  app "wechatwebdevtools.app"

  zap trash: [
    "~/Library/Application Support/微信web开发者工具",
    "~/Library/Caches/微信web开发者工具",
    "~/Library/Preferences/com.tencent.wechat.devtools.plist",
    "~/Library/Preferences/com.tencent.webplusdevtools.plist",
    "~/Library/Saved Application State/com.tencent.wechat.devtools.savedState",
  ]
end
