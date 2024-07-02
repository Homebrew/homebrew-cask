cask "windscribe" do
  version "2.10.15"
  sha256 "a204f64bdc1448c23c6b8b6c4609158455fd393131b74a4b25c4f0801aa3fd94"

  url "https://deploy.totallyacdn.com/desktop-apps/#{version}/Windscribe_#{version}.dmg",
      verified: "deploy.totallyacdn.com/desktop-apps/"
  name "Windscribe"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://windscribe.com/"

  livecheck do
    url "https://windscribe.com/changelog/mac"
    regex(%r{>\sv?(\d+(?:\.\d+)+)</a>\s</h3>}i)
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
