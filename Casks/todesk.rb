cask "todesk" do
  version "4.3.0.0"
  sha256 "0165d299c6ce0da5aeef1254041755124921dcfaef7f51c20ecd9a5ff78dfcc5"

  url "https://dl.todesk.com/macos/ToDesk_#{version}.zip"
  name "ToDesk"
  desc "Remote control software"
  homepage "https://www.todesk.com/"

  livecheck do
    url "https://www.todesk.com/download"
    regex(/href=.*?ToDesk[._-]v?(\d+(?:\.\d+)+)\.zip/i)
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
