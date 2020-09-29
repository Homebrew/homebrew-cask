cask "tinkerwell" do
  version "2.10.1"
  sha256 "9cec9e564e550615d73884e85038892e52e934249b2202e029e169eb75f5bc3c"

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
