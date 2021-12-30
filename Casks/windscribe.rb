cask "windscribe" do
  version "2.02.10"
  sha256 :no_check

  url "https://assets.windscribe.com/desktop/mac/Windscribe.dmg"
  name "Windscribe"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://windscribe.com/"

  livecheck do
    url "https://windscribe.com/changelog/mac"
    strategy :page_match
    regex(/Windscribe\.dmg">\s*v(\d+(?:\.\d+)*)/i)
  end

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
              "/Library/PrivilegedHelperTools/com.windscribe.helper.macos",
              "/Library/LaunchDaemons/com.windscribe.helper.macos.plist",
              "/private/var/run/windscribe_helper_socket2",
              "/usr/local/bin/windscribe-cli",
            ]

  zap trash: [
    "~/Library/Application Support/Windscribe",
    "~/Library/Preferences/com.windscribe.Windscribe2.plist",
    "~/Library/Preferences/com.aaa.windscribe.windscribe.plist",
    "~/Library/Saved Application State/com.windscribe.gui.macos.savedState",
  ]
end
