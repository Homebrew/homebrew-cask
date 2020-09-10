cask "tinkerwell" do
  version "2.9.0"
  sha256 "924a68dccc9911e303a06c01d59a99b43f0241e49955371375f8d11023e32810"

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
