cask "xkey" do
  version "1.2.22,20260602"
  sha256 "b40c82149589a6a7702557176d911f77e2ebcc5d649377d05950608ae9bc0e29"

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
