cask "tunnelbear" do
  on_catalina :or_older do
    version "4.1.8"
    sha256 "60c332511b91b794405249132ceb0c88e999b070c087b5f70f1cf09a84e5e5e9"
  end
  on_big_sur :or_newer do
    version "5.1.0"
    sha256 "818456b86fb0aaf9a1a0855990a2b5575a5f70ecb1ec344062c5ba423003f31f"
  end

  url "https://s3.amazonaws.com/tunnelbear/downloads/mac/TunnelBear-#{version}.zip",
      verified: "s3.amazonaws.com/tunnelbear/downloads/mac/"
  name "TunnelBear"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://www.tunnelbear.com/"

  livecheck do
    url "https://tunnelbear.s3.amazonaws.com/downloads/mac/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sierra"

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
    "~/Library/Caches/io.fabric.sdk.mac.data/com.tunnelbear.mac.TunnelBear",
    "~/Library/Cookies/com.tunnelbear.mac.TunnelBear.binarycookies",
    "~/Library/LaunchAgents/com.tunnelbear.mac.tbeara.plist",
    "~/Library/Logs/TunnelBear",
    "~/Library/Preferences/com.tunnelbear.mac.TunnelBear.plist",
    "~/Library/Preferences/group.com.tunnelbear.main.DataContainer.plist",
    "~/Library/WebKit/com.tunnelbear.mac.TunnelBear",
  ]
end
