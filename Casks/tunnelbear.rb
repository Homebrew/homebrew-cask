cask "tunnelbear" do
  version "4.0.2"
  sha256 "6581cdcb34cb8ac19b724990618b8f18efdc4e9f82c095b359f6fc51de7ef37f"

  # tunnelbear.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://tunnelbear.s3.amazonaws.com/downloads/mac/TunnelBear-#{version}.zip"
  appcast "https://tunnelbear.s3.amazonaws.com/downloads/mac/appcast.xml"
  name "TunnelBear"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://www.tunnelbear.com/"

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
