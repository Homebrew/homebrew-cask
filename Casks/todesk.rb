cask "todesk" do
  version "4.5.0.2"
  sha256 "48b9e1e4082ab4a4dcf714d784318c99d1b715e97ff3da3b3f79c0dc8d7ab7b1"

  url "https://dl.todesk.com/macos/ToDesk_#{version}.pkg"
  name "ToDesk"
  desc "Remote control software"
  homepage "https://www.todesk.com/"

  livecheck do
    url "https://dl.todesk.com/macos/uplog.html"
    regex(%r{<div\sclass="text">(\d+(?:\.\d+)+)</div>}i)
  end

  auto_updates true

  pkg "ToDesk_#{version}.pkg"

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
