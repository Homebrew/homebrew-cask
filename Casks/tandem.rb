cask "tandem" do
  arch arm: "arm64", intel: "x64"

  version "2.2.1130"
  sha256 arm:   "79f180e2a33a0d609b2a61f018622dbffb22054e66c75587a200908e206a648b",
         intel: "7b66d8e1bdcaef38e06c124577c1391ace575bde5cf7f0cfc02d7ced5bca5643"

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
