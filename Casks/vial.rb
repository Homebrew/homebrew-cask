cask "vial" do
  version "0.4.1"
  sha256 "72b9785c96686840fc3ad7897fdcf14dbc6d6a1db4cf1a5827676886b707c01e"

  url "https://github.com/vial-kb/vial-gui/releases/download/v#{version}/Vial-v#{version}.dmg",
      verified: "https://github.com/vial-kb/vial-gui"
  name "Vial"
  desc "Configurator of compatible keyboards in real time"
  homepage "https://get.vial.today/"

  app "Vial.app"

  zap trash: [
    "~/Library/Application Support/Vial",
    "~/Library/Caches/Vial",
    "~/Library/Preferences/Vial.plist",
    "~/Library/Preferences/com.vial.Vial.plist",
  ]
end
