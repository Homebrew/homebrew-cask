cask "ubiquiti-unifi-controller" do
  version "8.4.62"
  sha256 "ad0f71bae848e946f0b5e0d12c271aca2c9bc86eb85aef2b2d3995b15107fee4"

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
    requires_rosetta
    license "https://www.ui.com/eula/"
  end
end
