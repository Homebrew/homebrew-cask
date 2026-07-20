cask "weiyun" do
  version "5.2.1611"
  sha256 "7c1cc9e0c4563aee070f00ba06309cecf1b57f6e35500cc4d4cb0638b2b6dd83"

  url "https://dldir1.qq.com/weiyun/electron-update/release/#{version}/Weiyun-mac-x64-#{version}.dmg",
      verified: "dldir1.qq.com/weiyun/"
  name "Weiyun"
  desc "Document backup and online management"
  homepage "https://www.weiyun.com/"

  livecheck do
    url "https://jsonschema.qpic.cn/2993ffb0f5d89de287319113301f3fca/179b0d35c9b088e5e72862a680864254/config"
    strategy :json do |json|
      json.dig("electron_mac", "version")
    end
  end

  depends_on :macos

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
