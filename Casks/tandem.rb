cask "tandem" do
  version "1.5.1216"
  sha256 "84d816a9ed2d2b59e49eaaba74b5ddc4825273e93d4db3482f09d32426dcc28c"

  url "https://download.todesktop.com/200527auaqaacsy/Tandem%20#{version}.dmg",
      verified: "download.todesktop.com/200527auaqaacsy/"
  appcast "https://download.todesktop.com/200527auaqaacsy/latest-mac.yml"
  name "Tandem"
  desc "Virtual office for remote teams"
  homepage "https://tandem.chat/"

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
