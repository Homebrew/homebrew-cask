cask "vial" do
  version "0.5.1"
  sha256 "914b5ea1ea491d91f30dd98e09940085042682d619c185ee7cfdbff0758ceda9"

  url "https://github.com/vial-kb/vial-gui/releases/download/v#{version}/Vial-v#{version}.dmg",
      verified: "https://github.com/vial-kb/vial-gui/"
  name "Vial"
  desc "Configurator of compatible keyboards in real time"
  homepage "https://get.vial.today/"

  app "Vial.app"

  zap trash: [
    "~/Library/Application Support/Vial",
    "~/Library/Caches/Vial",
    "~/Library/Preferences/com.vial.Vial.plist",
    "~/Library/Preferences/Vial.plist",
  ]
end
