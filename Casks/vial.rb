cask "vial" do
  version "0.4"
  sha256 "0ce4c385c20d99047e40a7e842e71947b4527624a7d67243f07494f83f386d35"

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
