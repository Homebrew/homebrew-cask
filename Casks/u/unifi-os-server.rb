cask "unifi-os-server" do
  version "5.0.6"
  sha256 "8e030977c6bf4e9c1e2e65ee3afd71033b67264167cf50add3fad48ab9544d40"

  url "https://fw-download.ubnt.com/data/unifi-os-server/b290-macOS-dmg-amd64-#{version}-a165bb5f-f865-476a-b4bd-703e0d3d4ca1.dmg",
      verified: "fw-download.ubnt.com/data/unifi-os-server/"
  name "UniFi OS Server"
  desc "Server for managing UniFi networks and devices"
  homepage "https://www.ui.com/download/software/unifi-os-server/"

  livecheck do
    url "https://fw-update.ui.com/api/firmware?filter=eq~~product~~unifi-os-server&filter=eq~~channel~~release"
    strategy :json do |json|
      firmware = json.dig("_embedded", "firmware") || []
      versions = firmware.filter_map do |item|
        next unless item["platform"]&.start_with?("macOS-dmg-")

        item["version"]&.delete_prefix("v")
      end
      versions.uniq.max
    end
  end

  depends_on macos: ">= :monterey"

  app "UniFi OS Server.app"

  uninstall signal: ["TERM", "com.ui.unifi-os-server"]

  zap trash: [
    "~/Library/Application Support/UniFi OS Server",
    "~/Library/Logs/UniFi OS Server",
    "~/Library/Preferences/com.ui.unifi-os-server.plist",
    "~/Library/Saved Application State/com.ui.unifi-os-server.savedState",
  ]

  caveats do
    license "https://www.ui.com/eula/"
  end
end
