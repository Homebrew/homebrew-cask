cask "tinkerwell" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "3.0.1"

  if Hardware::CPU.intel?
    sha256 "ef6e46ae5812ecef78d051451b777a9ae8a785f5e6c14422a700395dfab00121"
  else
    sha256 "d3e5fa1221f56e644ceff442b5b7dc2ec6339ab06743f394610b9da52f281da0"
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
