cask "tinkerwell" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "3.6.0"

  if Hardware::CPU.intel?
    sha256 "e116436e282a5e7808b61bcf80fb625392e252afeeee90f95804cc2368f80a76"
  else
    sha256 "e6f89b3517fd8a6b11af3f255aa293ad5e11aeebe1f44a08305951b2211f50aa"
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
