cask "ubiquiti-unifi-controller" do
  version "8.0.26"
  sha256 "f1ed3c75b3f544970812fc521cb82f24cd3a95c5f105cd70a7c7073a21c66bfb"

  url "https://dl.ubnt.com/unifi/#{version}/UniFi-Network-Server.dmg",
      verified: "dl.ubnt.com/"
  name "Ubiquiti UniFi Network Controller"
  desc "Set up, configure, manage and analyze your UniFi network"
  homepage "https://unifi-sdn.ui.com/"

  livecheck do
    url "https://fw-update.ubnt.com/api/firmware-latest?filter=eq~~product~~unifi-controller&filter=eq~~channel~~release&filter=eq~~platform~~macos"
    regex(/"version"\s*:\s*"v?(\d+(?:\.\d+)+)/i)
  end

  app "UniFi.app"

  uninstall signal: ["TERM", "com.ubnt.UniFi"]

  zap trash: [
    "~/Library/Application Support/UniFi",
    "~/Library/Saved Application State/com.ubnt.UniFi-Discover.savedState",
    "~/Library/Saved Application State/com.ubnt.UniFi.savedState",
  ]

  caveats do
    license "https://www.ui.com/eula/"
  end
end
