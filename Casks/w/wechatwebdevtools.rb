cask "wechatwebdevtools" do
  arch arm: "arm64", intel: "x64"

  version "1.06.2310080"
  sha256 arm:   "e57a696296a3ae310c1fa4f6e099edb19de9e1dbc8bd215611e4ba58b8fa1430",
         intel: "b56cf2d0f7e73d2cdb4d0edc29e51ca2e47690114ffe7e340ca86f7816836b8b"

  url "https://dldir1.qq.com/WechatWebDev/release/be1ec64cf6184b0fa64091919793f068/wechat_devtools_#{version}_darwin_#{arch}.dmg"
  name "Wechat DevTools"
  name "微信开发者工具"
  desc "Wechat DevTools for Official Account and Mini Program development"
  homepage "https://developers.weixin.qq.com/miniprogram/dev/devtools/download.html"

  livecheck do
    url "https://developers.weixin.qq.com/miniprogram/dev/devtools/stable.html"
    regex(/a>\s(\d(?:\.\d+)+)\s</i)
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
