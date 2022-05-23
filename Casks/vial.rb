cask "vial" do
  version "0.5.2"
  sha256 "71c7c91d373bfaeda683bf5b40fd1e3e04d332730e9786f0dfc596842fbeda75"

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
