cask "tandem" do
  version "1.6.210"
  sha256 "0600d75b91fea4b15c0c41e5a470ea95f7bf867fcf1b55499f8913c98726a2d0"

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
