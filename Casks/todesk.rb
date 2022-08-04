cask "todesk" do
  version "4.3.0.1"
  sha256 "64edc76090439ba8481d8216a6f6bf4b6dc7100407f47e8bc3049c5573062e69"

  url "https://dl.todesk.com/macos/ToDeskk_v#{version}.pkg"
  name "ToDesk"
  desc "Remote control software"
  homepage "https://www.todesk.com/"

  livecheck do
    url "https://dl.todesk.com/macos/uplog.html"
    regex(%r{<div\sclass="text">(\d+(?:\.\d+)+)</div>}i)
  end

  auto_updates true

  pkg "ToDeskk_v#{version}.pkg"

  uninstall delete:    "/Applications/ToDesk.app",
            launchctl: [
              "com.youqu.todesk.desktop",
              "com.youqu.todesk.service",
              "com.youqu.todesk.startup",
              "com.youqu.todesk.client.startup",
            ],
            pkgutil:   "com.youqu.todesk.mac",
            quit:      "com.youqu.todesk.mac"

  zap trash: [
    "~/Library/Application Scripts/com.youqu.todesk.mac.LaunchHelper",
    "~/Library/Containers/com.youqu.todesk.mac.LaunchHelper",
    "~/Library/Group Containers/group.youqu.todesk",
    "~/Library/Preferences/com.youqu.todesk.mac.plist",
    "~/Library/ToDesk",
  ]
end
