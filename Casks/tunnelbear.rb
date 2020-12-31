cask "tunnelbear" do
  version "4.0.4,1608325762"
  sha256 "9ca595d5f202eb882c746fc8123f50530325774b869e1d44c8ba634f9d3defe9"

  url "https://tunnelbear.s3.amazonaws.com/downloads/mac/TunnelBear-#{version.before_comma}.zip",
      verified: "tunnelbear.s3.amazonaws.com/"
  name "TunnelBear"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://www.tunnelbear.com/"

  livecheck do
    url "https://tunnelbear.s3.amazonaws.com/downloads/mac/appcast.xml"
    strategy :sparkle
  end

  app "TunnelBear.app"

  uninstall quit:      "com.tunnelbear.mac.TunnelBear",
            launchctl: "com.tunnelbear.mac.tbeard",
            delete:    "/Library/PrivilegedHelperTools/com.tunnelbear.mac.tbeard"

  zap trash: [
    "~/Library/Preferences/com.tunnelbear.mac.TunnelBear.plist",
    "~/Library/Caches/com.tunnelbear.mac.TunnelBear",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tunnelbear.mac.tunnelbear.sfl*",
    "~/Library/Application Support/com.tunnelbear.mac.TunnelBear",
    "~/Library/Application Support/TunnelBear",
    "~/Library/Caches/com.crashlytics.data/com.tunnelbear.mac.TunnelBear",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.tunnelbear.mac.TunnelBear",
    "~/Library/Caches/io.fabric.sdk.mac.data/com.tunnelbear.mac.TunnelBear",
    "~/Library/Cookies/com.tunnelbear.mac.TunnelBear.binarycookies",
    "~/Library/LaunchAgents/com.tunnelbear.mac.tbeara.plist",
    "~/Library/Logs/TunnelBear",
  ]
end
