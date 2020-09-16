cask "wechatwebdevtools" do
  version "1.03.2009140"
  sha256 "2826f3ec9751c683b443e88bab6f1e8db4364cde2d5039b53afd8d92b96f8e83"

  url "https://dldir1.qq.com/WechatWebDev/release/p-ae42ee2cde4d42ee80ac60b35f183a99/wechat_devtools_#{version}.dmg"
  appcast "https://developers.weixin.qq.com/miniprogram/dev/devtools/stable.html"
  name "wechat web devtools"
  name "微信web开发者工具"
  homepage "https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html"

  app "wechatwebdevtools.app"

  zap trash: [
    "~/Library/Application Support/微信web开发者工具",
    "~/Library/Caches/微信web开发者工具",
    "~/Library/Preferences/com.tencent.wechat.devtools.plist",
    "~/Library/Saved Application State/com.tencent.wechat.devtools.savedState",
  ]
end
