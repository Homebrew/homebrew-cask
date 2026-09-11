cask "tunnelbear" do
  version "5.10.0"
  sha256 "f1a4ff16be2945bd766d3c796a6da8fb55319a086437a53fc5bb3e0d3dd66044"

  url "https://tunnelbear.s3.amazonaws.com/downloads/mac/TunnelBear-#{version}.zip"
  name "TunnelBear"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://www.tunnelbear.com/"

  # Older versions may have a more recent `pubDate` than newer versions, so we
  # have to check all the items in the appcast.
  livecheck do
    url "https://tunnelbear.s3.amazonaws.com/downloads/mac/appcast.xml"
    strategy :sparkle do |items|
      items.map(&:short_version)
    end
  end

  auto_updates true
  depends_on :macos

  app "TunnelBear.app"

  uninstall launchctl: "com.tunnelbear.mac.tbeard",
            quit:      "com.tunnelbear.mac.TunnelBear",
            delete:    "/Library/PrivilegedHelperTools/com.tunnelbear.mac.tbeard"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tunnelbear.mac.tunnelbear.sfl*",
    "~/Library/Application Support/com.tunnelbear.mac.TunnelBear",
    "~/Library/Application Support/TunnelBear",
    "~/Library/Caches/com.crashlytics.data/com.tunnelbear.mac.TunnelBear",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.tunnelbear.mac.TunnelBear",
    "~/Library/Caches/com.tunnelbear.*",
    "~/Library/Caches/io.fabric.sdk.mac.data/com.tunnelbear.mac.TunnelBear",
    "~/Library/Cookies/com.tunnelbear.mac.TunnelBear.binarycookies",
    "~/Library/HTTPStorages/com.tunnelbear.mac.TunnelBear",
    "~/Library/LaunchAgents/com.tunnelbear.mac.tbeara.plist",
    "~/Library/Logs/TunnelBear",
    "~/Library/Preferences/*.tunnelbear*.plist",
    "~/Library/WebKit/com.tunnelbear.mac.TunnelBear",
  ]
end
