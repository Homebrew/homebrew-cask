cask "tinkerwell" do
  version "2.8.5"
  sha256 "45b9d470af0c5d4c18c1a3ced43e330483bd73382559e1c042413ab5b5c910fb"

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
