cask "xkey" do
  version "1.2.27,20261113"
  sha256 "f6a73932978211ef0d94b7b268e0fcbc2b9119292b2b735a86ac06d92210a428"

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
    "~/Library/Application Scripts/7E6Z9B4F2H.com.codetay.inputmethod.XKey",
    "~/Library/Application Support/XKey",
    "~/Library/Group Containers/7E6Z9B4F2H.com.codetay.inputmethod.XKey",
    "~/Library/Preferences/com.codetay.XKey.plist",
  ]
end
