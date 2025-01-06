cask "weiyun" do
  version "5.2.1485"
  sha256 "8320d1d307950e36c9dff419f7c03289dee03b67e7b6552505dadad1a67e547b"

  url "https://dldir1.qq.com/weiyun/electron-update/release/#{version}/Weiyun-mac-x64-#{version}.dmg",
      verified: "dldir1.qq.com/weiyun/"
  name "Weiyun"
  desc "Document backup and online management"
  homepage "https://www.weiyun.com/"

  livecheck do
    url "https://jsonschema.qpic.cn/2993ffb0f5d89de287319113301f3fca/179b0d35c9b088e5e72862a680864254/config"
    regex(/Weiyun[._-]mac[._-]x64[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Weiyun.app"

  uninstall quit: "com.tencent.MacWeiyun"

  zap trash: [
    "~/Library/Preferences/com.tencent.MacWeiyun.plist",
    "~/Library/Saved Application State/com.tencent.MacWeiyun.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
