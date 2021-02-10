cask "weiyun" do
  version "3.0.6.409_0"
  sha256 "c723d0f872dbcb74fc745a8dafeb9701adb3ef28b495595082a18bf9139efadd"

  url "https://dldir1.qq.com/weiyun/Weiyun_Mac_#{version}.dmg",
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
