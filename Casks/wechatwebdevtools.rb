cask "wechatwebdevtools" do
  version "1.05.2103190"
  sha256 "6b57f96c4031ff3568303e85011d24b6b14b544990411ab5781374e3922b4d25"

  url "https://dldir1.qq.com/WechatWebDev/release/p-ae42ee2cde4d42ee80ac60b35f183a99/wechat_devtools_#{version}.dmg"
  name "wechat web devtools"
  name "微信web开发者工具"
  desc "Weixin DevTools for Official Account and Mini Program development"
  homepage "https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html"

  livecheck do
    url "https://developers.weixin.qq.com/miniprogram/dev/devtools/download.html"
    strategy :page_match
    regex(%r{Stable Build</a>\s*\((\d+(?:\.\d+)*)}i)
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
