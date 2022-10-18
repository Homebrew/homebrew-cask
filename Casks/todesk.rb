cask "todesk" do
  version "4.3.1.1"
  sha256 "1149ad70503f116d07c7e87874601cbba5e0733f6b94f25ebf7fe055a4207bfe"

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
