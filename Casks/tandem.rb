cask "tandem" do
  version "1.5.1206"
  sha256 "7e9d17e939fe46cdf66cb270ab9b7b2c8167227e945b053c3f66e304f3cfcadb"

  # download.todesktop.com/200527auaqaacsy/ was verified as official when first introduced to the cask
  url "https://download.todesktop.com/200527auaqaacsy/Tandem%20#{version}.dmg"
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
