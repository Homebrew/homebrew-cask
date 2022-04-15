cask "todesk" do
  version "4.2.2"
  sha256 "e6ce86082b96cd8abd0a66e2720d296c8f2087f99e8830212e61725d79c4d0b6"

  url "https://dl.todesk.com/macos/ToDesk_#{version}.dmg"
  name "com.youqu.todesk.mac"
  desc "Remote control software"
  homepage "http://www.todesk.net.cn/"

  livecheck do
    skip "No version information available"
  end

  auto_updates true

  app "ToDesk.app"

  uninstall quit: "com.youqu.todesk.mac"

  zap trash: [
    "~/Library/Application Scripts/com.youqu.todesk.mac.LaunchHelper",
    "~/Library/Containers/com.youqu.todesk.mac.LaunchHelper",
    "~/Library/Preferences/com.youqu.todesk.mac.plist",
  ]
end
