cask "tinkerwell" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "2.18.1"

  if Hardware::CPU.intel?
    sha256 "1348d171fa38bbfb6060f1d5cc25d08dbcc847fb7c44a04b548323c26463a825"
  else
    sha256 "e5402f01c863da00ff143ec008f491fb42281aaf4689bcde4c0089bc29e36803"
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
