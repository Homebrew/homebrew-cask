cask "tinkerwell" do
  version "2.14.0"

  if Hardware::CPU.intel?
    sha256 "f4f2274683b66332937f9086322a97a1a0aca5a6051f9e7cbef6c5b2f95ed42b"

    url "https://download.tinkerwell.app/tinkerwell/Tinkerwell-#{version}.dmg"
  else
    sha256 "27b84d8fc8dc0e58d13b63d7b94b4f9f72814307ad6acd43d10fb885e273aea1"

    url "https://download.tinkerwell.app/tinkerwell/Tinkerwell-#{version}-arm64.dmg"
  end

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
