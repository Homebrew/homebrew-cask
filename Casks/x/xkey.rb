cask "xkey" do
  version "1.2.31,20261126.1"
  sha256 "9cca3bff90e879e0a0696a5af06e1ff147c01ab369ea495ea4b0c00bc94db4a7"

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
