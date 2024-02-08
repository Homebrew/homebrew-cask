cask "weiyun" do
  version "5.2.1414"
  sha256 "28756fd292ab3fc9715071d123efa92483c0b3a666289a8ea0e970e8ff64fd07"

  url "https://dldir1.qq.com/weiyun/electron-update/release/mac/Weiyun-mac-x64-#{version}.dmg",
      verified: "dldir1.qq.com/weiyun/"
  name "Weiyun"
  desc "Document backup and online management"
  homepage "https://www.weiyun.com/"

  livecheck do
    url "https://jsonschema.qpic.cn/2993ffb0f5d89de287319113301f3fca/179b0d35c9b088e5e72862a680864254/config"
    regex(/Weiyun[._-]mac[._-]x64[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Weiyun.app"

  uninstall quit: "com.tencent.MacWeiyun"

  zap trash: [
    "~/Library/Preferences/com.tencent.MacWeiyun.plist",
    "~/Library/Saved Application State/com.tencent.MacWeiyun.savedState",
  ]
end
