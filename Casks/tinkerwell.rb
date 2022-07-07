cask "tinkerwell" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "3.4.0"

  if Hardware::CPU.intel?
    sha256 "37fc0914fa3bd4bde7132fac62b390f8e0753a80f311782785125b6c6c02770e"
  else
    sha256 "07213b7566b22b15518a254074374eb3e08d2cde37414d09c2a111d361241ce1"
  end

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
