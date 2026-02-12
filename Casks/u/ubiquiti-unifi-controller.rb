cask "ubiquiti-unifi-controller" do
  version "10.1.85"
  sha256 "dc8360eec7059b02835108ac424960d95940ba3e9dc277b08e53a908acc8cb55"

  url "https://dl.ubnt.com/unifi/#{version}/UniFi-Network-Server.dmg",
      verified: "dl.ubnt.com/"
  name "Ubiquiti UniFi Network Controller"
  desc "Set up, configure, manage and analyze your UniFi network"
  homepage "https://unifi-sdn.ui.com/"

  livecheck do
    url "https://fw-update.ubnt.com/api/firmware-latest?filter=eq~~product~~unifi-controller&filter=eq~~channel~~release&filter=eq~~platform~~macos"
    regex(/^\D*?(\d+(?:\.\d+)+)/i)
    strategy :json do |json, regex|
      json.dig("_embedded", "firmware")&.filter_map do |item|
        item["version"]&.[](regex, 1)
      end
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "UniFi.app"

  uninstall signal: ["TERM", "com.ubnt.UniFi"]

  zap trash: [
    "~/Library/Application Support/UniFi",
    "~/Library/Saved Application State/com.ubnt.UniFi-Discover.savedState",
    "~/Library/Saved Application State/com.ubnt.UniFi.savedState",
  ]

  caveats do
    requires_rosetta
    license "https://www.ui.com/eula/"
  end
end
