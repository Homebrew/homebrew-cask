cask "tinkerwell" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "2.19.0"

  if Hardware::CPU.intel?
    sha256 "f5bf17eef5652b51b19cbd884df8ca3a0ceee69211ec80d10a0290f0290a5d42"
  else
    sha256 "20c1129db8e78bf13c35e8b8182dd239186166371506f7d4ebb4523c00a59578"
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
