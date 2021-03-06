cask "wechatwebdevtools" do
  version "1.05.2102010"
  sha256 "3d0b7134040fd1103f5d6d7bbe4d1af1f5786dff9028a5ca4eb60a00ad0765b7"

  url "https://dldir1.qq.com/WechatWebDev/release/p-ae42ee2cde4d42ee80ac60b35f183a99/wechat_devtools_#{version}.dmg"
  appcast "https://developers.weixin.qq.com/miniprogram/dev/devtools/stable.html"
  name "wechat web devtools"
  name "微信web开发者工具"
  homepage "https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html"

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
