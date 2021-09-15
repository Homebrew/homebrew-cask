cask "wechatwebdevtools" do
  version "1.05.2108130"
  sha256 "bce556b6d138b6548eabb291a436e175b6708be2f661d48c6f94ae05e11b5afe"

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
