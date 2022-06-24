cask "windscribe" do
  version "2.3.16"
  sha256 "993c137d8d5518e92baa927ea17f37dd112bd92a4e1b5564309a321c39cfddcf"

  url "https://assets.totallyacdn.com/desktop/mac/Windscribe_#{version.major_minor}.dmg",
      verified: "assets.totallyacdn.com/desktop/mac"
  name "Windscribe"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://windscribe.com/"

  livecheck do
    url "https://windscribe.com/changelog/mac"
    regex(/.*?Windscribe[._-].*?\d.dmg.*?v(\d+(?:\.\d+)+)/i)
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
