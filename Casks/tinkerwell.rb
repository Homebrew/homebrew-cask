cask "tinkerwell" do
  version "2.11.0"
  sha256 "322070bd4973a7e8669af74b508710de527b6f7c6c7d8316553c22904b377e10"

  # tinkerwell.fra1.digitaloceanspaces.com/ was verified as official when first introduced to the cask
  url "https://tinkerwell.fra1.digitaloceanspaces.com/tinkerwell/Tinkerwell-#{version}.dmg"
  appcast "https://tinkerwell.fra1.digitaloceanspaces.com/tinkerwell/latest-mac.yml"
  name "Tinkerwell"
  homepage "https://tinkerwell.app/"

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
