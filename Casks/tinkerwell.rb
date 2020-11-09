cask "tinkerwell" do
  version "2.10.2"
  sha256 "cdb04e90b3bca3e0d08bafc5d3e940022f9ebea230364f3e8715ddd91477d1ab"

  # tinkerwell.fra1.digitaloceanspaces.com/ was verified as official when first introduced to the cask
  url "https://tinkerwell.fra1.digitaloceanspaces.com/tinkerwell/Tinkerwell-#{version}.dmg"
  appcast "https://tinkerwell.fra1.digitaloceanspaces.com/tinkerwell/latest-mac.yml"
  name "Tinkerwell"
  homepage "https://tinkerwell.app/"

  app "Tinkerwell.app"

  zap trash: [
    "~/.config/tinkerwell",
    "~/Library/Application Support/Tinkerwell",
    "~/Library/Logs/Tinkerwell",
    "~/Library/Preferences/de.beyondco.tinkerwell.plist",
    "~/Library/Saved Application State/de.beyondco.tinkerwell.savedState",
  ]
end
