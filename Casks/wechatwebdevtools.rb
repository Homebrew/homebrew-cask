cask "wechatwebdevtools" do
  version "1.03.2101150"
  sha256 "9b5112edb758e8fea4a6eb4a08e9a03b242d2d02ba12a6f78368769e21c4826d"

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
