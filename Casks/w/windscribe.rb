cask "windscribe" do
  version "2.13.8"
  sha256 "7e297e284037891f31e0a1e465a512cc980b9bf50ba55f4d725c82366acd5328"

  url "https://deploy.totallyacdn.com/desktop-apps/#{version}/Windscribe_#{version}.dmg",
      verified: "deploy.totallyacdn.com/desktop-apps/"
  name "Windscribe"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://windscribe.com/"

  livecheck do
    url "https://windscribe.com/install/desktop/osx"
    strategy :header_match
  end

  auto_updates true

  installer manual: "WindscribeInstaller.app"

  uninstall launchctl: [
              "com.windscribe.helper.macos",
              "com.windscribe.launcher.macos",
            ],
            quit:      [
              "com.windscribe.gui.macos",
              "com.windscribe.helper.macos",
              "com.windscribe.launcher.macos",
            ],
            delete:    [
              "/Applications/Windscribe.app",
              "/Library/LaunchDaemons/com.windscribe.helper.macos.plist",
              "/Library/PrivilegedHelperTools/com.windscribe.helper.macos",
              "/usr/local/bin/windscribe-cli",
            ]

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.windscribe.launcher.macos.sfl*",
    "~/Library/Application Support/Windscribe",
    "~/Library/Preferences/com.aaa.windscribe.windscribe.plist",
    "~/Library/Preferences/com.windscribe.Windscribe2.plist",
    "~/Library/Saved Application State/com.windscribe.gui.macos.savedState",
  ]
end
