cask "tinkerwell" do
  arch arm: "-arm64"

  version "3.21.2"
  sha256 arm:   "03179a1ee4c8da0cf7ecd84ba3e3b43c0e1c097a6df5cc129ccfcf131e1d8aa2",
         intel: "04157e5641d9c1c4849fdf9f0b211257b95eb1caa7727bd9cf0d5efe13d2e8cc"

  url "https://download.tinkerwell.app/tinkerwell/Tinkerwell-#{version}#{arch}.dmg"
  name "Tinkerwell"
  desc "Tinker tool for PHP and Laravel developers"
  homepage "https://tinkerwell.app/"

  livecheck do
    url "https://download.tinkerwell.app/tinkerwell/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Tinkerwell.app"

  zap trash: [
    "~/.config/tinkerwell",
    "~/Library/Application Support/Tinkerwell",
    "~/Library/Caches/de.beyondco.tinkerwell",
    "~/Library/Caches/de.beyondco.tinkerwell.ShipIt",
    "~/Library/Logs/Tinkerwell",
    "~/Library/Preferences/de.beyondco.tinkerwell.plist",
    "~/Library/Saved Application State/de.beyondco.tinkerwell.savedState",
  ]
end
