cask "wechatwebdevtools" do
  version "1.03.2011110"
  sha256 "9483f356d32fb26d54eb88960a45e5856818ead883cf7457c1f82b04fd4599e8"

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
