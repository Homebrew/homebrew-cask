cask "tinkerwell" do
  arch arm: "-arm64"

  version "3.7.0"

  on_intel do
    sha256 "521ce606c319cbf83a7a93bc80f531ca7c3e2fffcd06f7dc0fab72587b7c063e"
  end
  on_arm do
    sha256 "c49f7a4088ee871c40d7fdc25c7a9074a0e3d84f26b6edd99c27f39e8382a022"
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
