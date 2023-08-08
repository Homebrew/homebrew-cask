cask "vial" do
  version "0.7"
  sha256 "65ea4c0ece01de900e960ef87293b3261ee47b38fe633738f4045cb52805b224"

  url "https://github.com/vial-kb/vial-gui/releases/download/v#{version}/Vial-v#{version}.dmg",
      verified: "github.com/vial-kb/vial-gui/"
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
