cask "xkey" do
  version "1.2.29,20261117"
  sha256 "f78d9316252c94002ff0064b654dc7d766976a0505ac75cbcba6d1bc22672549"

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
