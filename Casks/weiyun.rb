cask "weiyun" do
  version "5.2.1238"
  sha256 "30075abb9b6538063a8f4d241046d8f1df2ecb74732998af14b6172c90a3cafc"

  url "https://dldir1.qq.com/weiyun/electron-update/release/mac/Weiyun-mac-x64-#{version}.dmg",
      verified: "dldir1.qq.com/weiyun/"
  name "Weiyun"
  desc "Document backup and online management"
  homepage "https://www.weiyun.com/"

  livecheck do
    url "https://qzonestyle.gtimg.cn/qzone/qzactStatics/configSystem/data/65/config1.js"
    regex(/Weiyun[._-]mac[._-]x64[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Weiyun.app"

  uninstall quit: "com.tencent.MacWeiyun"

  zap trash: [
    "~/Library/Preferences/com.tencent.MacWeiyun.plist",
    "~/Library/Saved Application State/com.tencent.MacWeiyun.savedState",
  ]
end
