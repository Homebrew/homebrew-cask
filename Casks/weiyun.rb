cask "weiyun" do
  version "5.2.1109"
  sha256 "23339bc991d6938b5e71f5431e477fee5708318b7bc532af9a676cfeb2b9cec5"

  url "https://dldir1.qq.com/weiyun/electron-update/release/mac/Weiyun-mac-x64-#{version}.dmg",
      verified: "dldir1.qq.com/weiyun/"
  appcast "https://qzonestyle.gtimg.cn/qzone/qzactStatics/configSystem/data/65/config1.js"
  name "weiyun"
  homepage "https://www.weiyun.com/"

  app "Weiyun.app"

  uninstall quit: "com.tencent.MacWeiyun"

  zap trash: [
    "~/Library/Preferences/com.tencent.MacWeiyun.plist",
    "~/Library/Saved Application State/com.tencent.MacWeiyun.savedState",
  ]
end
