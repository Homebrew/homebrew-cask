cask "vial" do
  version "0.3"
  sha256 "7f8861cce8782afa5f68267e3b28293517cd8f0aee8b70f621b8c208b79b5cb1"

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
