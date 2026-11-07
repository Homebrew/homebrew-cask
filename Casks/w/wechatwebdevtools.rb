cask "wechatwebdevtools" do
  arch arm: "arm64", intel: "x64"

  version "2.02.2609250"
  sha256 arm:   "dbd3b22e422f6fc3c8be34178f16d068ee04a0026c5edea1b161040f22c58b37",
         intel: "f86ef6236ad39fe192b8d075b7f27c3389d5ec41c5d4cc3a94d1d0141a6a2c68"

  url "https://dldir1.qq.com/WechatWebDev/release/be1ec64cf6184b0fa64091919793f068/wechat_devtools_#{version}_darwin_#{arch}.dmg"
  name "Wechat DevTools"
  name "微信开发者工具"
  desc "Wechat DevTools for Official Account and Mini Program development"
  homepage "https://developers.weixin.qq.com/miniprogram/dev/devtools/download.html"

  livecheck do
    url "https://devtools.wxqcloud.qq.com.cn/WechatWebDev/nightly/versions/config.json"
    strategy :json do |json|
      stable = json["channels"]&.find { |channel| channel["id"] == "stable" }
      next unless stable

      stable["version"]
    end
  end

  auto_updates true
  depends_on :macos

  app "wechatwebdevtools.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.electron.sfl*",
    "~/Library/Application Support/微信开发者工具",
    "~/Library/Caches/微信开发者工具",
    "~/Library/Preferences/com.github.Electron.plist",
    "~/Library/Preferences/com.tencent.webplusdevtools.plist",
    "~/Library/Preferences/com.tencent.wechat.devtools.plist",
    "~/Library/Saved Application State/com.tencent.wechat.devtools.savedState",
  ]
end
