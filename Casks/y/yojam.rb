cask "yojam" do
  version "1.1.5"
  sha256 "72a41b3637b5a6cbcf8afabe6bf22cc2a27e50d448238ada3ab19bc6fd8e0d3d"

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

  uninstall quit: [
    "com.yojam.app",
    "com.yojam.app.NativeHost",
    "com.yojam.app.SafariExtension",
    "com.yojam.app.ShareExtension",
  ]

  zap trash: [
    "~/.config/yojam",
    "~/Library/Application Support/*/*/NativeMessagingHosts/org.yojam.host.json",
    "~/Library/Application Support/*/NativeMessagingHosts/org.yojam.host.json",
    "~/Library/Application Support/Yojam",
    "~/Library/Caches/com.yojam.app*",
    "~/Library/Group Containers/group.org.yojam.shared",
    "~/Library/HTTPStorages/com.yojam.app",
    "~/Library/HTTPStorages/com.yojam.app.binarycookies",
    "~/Library/Logs/Yojam",
    "~/Library/Preferences/com.yojam.app.*",
    "~/Library/Saved Application State/com.yojam.app.savedState",
    "~/Library/WebKit/com.yojam.app",
  ]
end
