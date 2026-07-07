cask "xkey" do
  version "1.2.24,20260707"
  sha256 "26be250dcffd8d76ba88ba793ee01c534000445c9ab5d4004251b0f71d139fd3"

  url "https://github.com/xmannv/xkey/releases/download/v#{version.csv.first}-#{version.csv.second}/XKey.dmg"
  name "XKey"
  desc "Vietnamese input method engine"
  homepage "https://github.com/xmannv/xkey/"

  livecheck do
    url "https://xmannv.github.io/xkey/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :monterey

  app "XKey.app"

  zap trash: [
    "~/Library/Application Support/XKey",
    "~/Library/Preferences/com.codetay.XKey.plist",
  ]
end
