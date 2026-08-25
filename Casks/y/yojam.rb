cask "yojam" do
  version "1.2.2"
  sha256 "f1f62ac4f1a0e19170f89f385beb289a181dfcaf604673e65ff88f9d505dae67"

  url "https://yoj.am/releases/Yojam-#{version}.dmg"
  name "Yojam"
  desc "Open links in selected browser, profiles, or apps"
  homepage "https://yoj.am/"

  livecheck do
    url "https://yoj.am/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Yojam.app"

  uninstall launchctl: "org.yojam.cleanup",
            quit:      [
              "com.yojam.app",
              "com.yojam.app.NativeHost",
              "com.yojam.app.SafariExtension",
              "com.yojam.app.ShareExtension",
            ]

  zap trash: [
    "~/.config/yojam",
    "~/Library/Application Scripts/group.org.yojam.shared",
    "~/Library/Application Support/*/*/NativeMessagingHosts/org.yojam.host.json",
    "~/Library/Application Support/*/NativeMessagingHosts/org.yojam.host.json",
    "~/Library/Application Support/com.yojam.app",
    "~/Library/Application Support/Yojam",
    "~/Library/Caches/com.yojam.app*",
    "~/Library/Group Containers/group.org.yojam.shared",
    "~/Library/HTTPStorages/com.yojam.app",
    "~/Library/HTTPStorages/com.yojam.app.binarycookies",
    "~/Library/LaunchAgents/org.yojam.cleanup.plist",
    "~/Library/Logs/Yojam",
    "~/Library/Preferences/com.yojam.app.*",
    "~/Library/Saved Application State/com.yojam.app.savedState",
    "~/Library/WebKit/com.yojam.app",
  ]
end
