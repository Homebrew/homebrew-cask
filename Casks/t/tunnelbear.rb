cask "tunnelbear" do
  on_catalina :or_older do
    version "4.1.8"
    sha256 "60c332511b91b794405249132ceb0c88e999b070c087b5f70f1cf09a84e5e5e9"

    url "https://s3.amazonaws.com/tunnelbear/downloads/mac/TunnelBear-#{version}.zip",
        verified: "s3.amazonaws.com/tunnelbear/downloads/mac/"

    depends_on macos: ">= :sierra"
  end
  on_big_sur :or_newer do
    version "5.1.1"
    sha256 :no_check

    url "https://s3.amazonaws.com/tunnelbear/downloads/mac/TunnelBear.zip",
        verified: "s3.amazonaws.com/tunnelbear/downloads/mac/"

    depends_on macos: ">= :big_sur"
  end

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

  app "TunnelBear.app"

  uninstall quit:      "com.tunnelbear.mac.TunnelBear",
            launchctl: "com.tunnelbear.mac.tbeard",
            delete:    "/Library/PrivilegedHelperTools/com.tunnelbear.mac.tbeard"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tunnelbear.mac.tunnelbear.sfl*",
    "~/Library/Application Support/com.tunnelbear.mac.TunnelBear",
    "~/Library/Application Support/TunnelBear",
    "~/Library/Caches/com.crashlytics.data/com.tunnelbear.mac.TunnelBear",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.tunnelbear.mac.TunnelBear",
    "~/Library/Caches/com.tunnelbear.mac.TunnelBear",
    "~/Library/Caches/com.tunnelbear.sdk",
    "~/Library/Caches/io.fabric.sdk.mac.data/com.tunnelbear.mac.TunnelBear",
    "~/Library/Cookies/com.tunnelbear.mac.TunnelBear.binarycookies",
    "~/Library/HTTPStorages/com.tunnelbear.mac.TunnelBear",
    "~/Library/LaunchAgents/com.tunnelbear.mac.tbeara.plist",
    "~/Library/Logs/TunnelBear",
    "~/Library/Preferences/com.tunnelbear.mac.TunnelBear.plist",
    "~/Library/Preferences/group.com.tunnelbear.main.DataContainer.plist",
    "~/Library/WebKit/com.tunnelbear.mac.TunnelBear",
  ]
end
