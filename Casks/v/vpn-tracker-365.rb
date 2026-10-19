cask "vpn-tracker-365" do
  # NOTE: "365" is not a version number, but an intrinsic part of the product name
  version "26.9,98"
  sha256 "dcb2b0e6b347e3ede033cd0bf1cfc4d77f57bcb5c579af1760844ed40600d330"

  url "https://download.equinux.com/files/other/VPN%20Tracker%20365%20-%20#{version.csv.first}.#{version.csv.second}.zip"
  name "VPN Tracker 365"
  desc "VPN client: IPsec, L2TP, OpenVPN, PPTP, SSTP, SonicWALL/AnyConnect/Fortinet SSL"
  homepage "https://vpntracker.com/"

  livecheck do
    url "https://www.equinux.com/dlc/?l=/x/products/vpntracker/download.html&cc=com.equinux.VPNTracker&v=365&d"
    regex(/VPN[\s._-]Tracker[\s._-]365[\s._-]+v?(\d+(?:\.\d+)+)[\s._-](\d+(?:\.\d+)*)\.zip/i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on :macos

  app "VPN Tracker 365.app"

  uninstall delete: [
    "/Library/Application Support/VPN Tracker 365",
    "/Library/Extensions/com.equinux.VPNTracker365.*",
    "/Library/LaunchDaemons/com.equinux.VPNTracker365.agent.plist",
    "/Library/Preferences/com.equinux.VPNTracker365.plist",
    "/Library/PrivilegedHelperTools/com.equinux.VPNTracker365.*",
  ]

  zap trash: [
    "~/Library/Application Support/VPN Tracker 365",
    "~/Library/Caches/com.vpntracker.365mac",
    "~/Library/HTTPStorages/com.vpntracker.365mac",
    "~/Library/Preferences/com.equinux.VPNTracker365.plist",
    "~/Library/Preferences/com.vpntracker.365mac.plist",
  ]
end
