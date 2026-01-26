cask "weiyun" do
  version "5.2.1545"
  sha256 "924a5091449f17c80b960790b62717c638a4ba820abbd586c03569bc05077ab2"

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
