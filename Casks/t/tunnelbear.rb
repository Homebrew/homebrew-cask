cask "tunnelbear" do
  on_catalina :or_older do
    version "4.1.8"
    sha256 "60c332511b91b794405249132ceb0c88e999b070c087b5f70f1cf09a84e5e5e9"

    livecheck do
      skip "Legacy version"
    end

    depends_on macos: ">= :sierra"
  end
  on_big_sur :or_newer do
    version "5.3.1"
    sha256 "ab021ae5d1d3e12686b946a79d50bea62110b7d6463bd6e29b34b595834c017c"

    # Older versions may have a more recent `pubDate` than newer versions, so we
    # have to check all the items in the appcast.
    livecheck do
      url "https://tunnelbear.s3.amazonaws.com/downloads/mac/appcast.xml"
      strategy :sparkle do |items|
        items.map(&:short_version)
      end
    end

    depends_on macos: ">= :big_sur"
  end

  url "https://tunnelbear.s3.amazonaws.com/downloads/mac/TunnelBear-#{version}.zip",
      verified: "tunnelbear.s3.amazonaws.com/downloads/mac/"
  name "TunnelBear"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://www.tunnelbear.com/"

  auto_updates true

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
