cask "tandem" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.1.1207"

  if Hardware::CPU.intel?
    sha256 "52610c4f0fd97b3ea27030a16097c19eefe463205c7202cf88a9fbfcbc6a812a"
  else
    sha256 "a088b5d2d2316067c9357b278396a50e725ecb51413dec65588849d700012e44"
  end

  url "https://download.todesktop.com/200527auaqaacsy/Tandem%20#{version}-#{arch}.dmg",
      verified: "download.todesktop.com/200527auaqaacsy/"
  name "Tandem"
  desc "Virtual office for remote teams"
  homepage "https://tandem.chat/"

  livecheck do
    url "https://download.todesktop.com/200527auaqaacsy/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Tandem.app"

  zap trash: [
    "~/Library/Application Support/Caches/tandem-updater",
    "~/Library/Application Support/Tandem",
    "~/Library/Caches/tandem.app",
    "~/Library/Caches/tandem.app.ShipIt",
    "~/Library/Logs/Tandem",
    "~/Library/Preferences/ByHost/tandem.app.ShipIt.*.plist",
    "~/Library/Preferences/tandem.app.plist",
    "~/Library/Saved Application State/tandem.app.savedState",
  ]
end
