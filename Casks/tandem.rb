cask "tandem" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.2.307"

  if Hardware::CPU.intel?
    sha256 "2a01c9dc79673463e28a6c8e72abd1e4041a3480defaa9092ab85b1869575717"
  else
    sha256 "3e72e92e27f01178efca1d78f27da0ac4fb28e07c99832bb9f53388ccc541056"
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
