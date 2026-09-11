cask "xkey" do
  version "1.2.25,20260907"
  sha256 "cde361f827668765c44a97ad508986d60ff3ebb7f71830e5c567ccb9e2a8e1c1"

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
