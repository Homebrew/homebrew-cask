cask "windscribe" do
  version :latest
  sha256 :no_check

  url "https://assets.windscribe.com/desktop/mac/Windscribe.dmg"
  name "Windscribe"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://windscribe.com/"

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
              "/usr/local/bin/windscribe-cli",
              "/Library/PrivilegedHelperTools/com.windscribe.helper.macos",
              "/Library/LaunchDaemons/com.windscribe.helper.macos.plist",
              "/private/var/run/windscribe_helper_socket2",
            ]

  zap trash: [
    "~/Library/Application Support/Windscribe",
    "~/Library/Saved Application State/com.windscribe.gui.macos.savedState",
    "~/Library/Preferences/com.windscribe.Windscribe2.plist",
    "~/Library/Preferences/com.aaa.windscribe.windscribe.plist",
  ]
end
