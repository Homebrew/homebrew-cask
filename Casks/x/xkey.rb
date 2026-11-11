cask "xkey" do
  version "1.2.26,20261111"
  sha256 "8efacd786ae3994895e78661d51e149e0f1a07fd1371989cf1c745ced4d3e965"

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

  uninstall quit: "com.codetay.XKey"

  zap trash: [
    "~/Library/Application Support/XKey",
    "~/Library/Preferences/com.codetay.XKey.plist",
  ]
end
