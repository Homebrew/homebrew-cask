cask "unifi-os-server" do
  arch arm: "arm64", intel: "amd64"

  on_intel do
    version "5.0.6"
    sha256 "8e030977c6bf4e9c1e2e65ee3afd71033b67264167cf50add3fad48ab9544d40"
  end

  on_arm do
    version "5.0.6"
    sha256 "ecc766175285e446da5a5f774f65bcc1f97657fba6155c2930022fa0380b33dd"
  end

  url "https://fw-download.ubnt.com/data/unifi-os-server/b290-macOS-dmg-#{arch}-#{version}-a165bb5f-f865-476a-b4bd-703e0d3d4ca1.dmg",
      verified: "fw-download.ubnt.com/data/unifi-os-server/"

  name "UniFi OS Server"
  desc "UniFi OS Server for managing UniFi networks and devices"
  homepage "https://www.ui.com/download/software/unifi-os-server/"

  livecheck do
    url "https://fw-update.ui.com/api/firmware?filter=eq~~product~~unifi-os-server&filter=eq~~channel~~release"
    regex(/macOS-dmg-(amd64|arm64)[-_]v?(\d+(?:\.\d+)+)/i)
    strategy :json do |json, regex|
      json.dig("_embedded", "firmware")&.filter_map do |item|
        match = item.dig("platform")&.match(regex)
        next unless match
        arch = match[1]
        version = match[2]
        download_url = item.dig("_links", "download", "href")
        next unless download_url
        "#{version},#{arch},#{download_url}"
      end
    end
  end

  depends_on macos: ">= :big_sur"

  app "UniFi OS Server.app"

  uninstall signal: ["TERM", "com.ui.unifi-os-server"]

  zap trash: [
    "~/Library/Application Support/UniFi OS Server",
    "~/Library/Saved Application State/com.ui.unifi-os-server.savedState",
    "~/Library/Preferences/com.ui.unifi-os-server.plist",
    "~/Library/Logs/UniFi OS Server",
  ]

  caveats do
    license "https://www.ui.com/eula/"
  end
end
