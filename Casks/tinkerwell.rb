cask "tinkerwell" do
  version "2.12.1"
  sha256 "4f70970540aa92f7f4635b618256a0272e67fb6b4725c4b33e2ef5d517c09fd4"

  url "https://download.tinkerwell.app/tinkerwell/Tinkerwell-#{version}.dmg"
  name "Tinkerwell"
  homepage "https://tinkerwell.app/"

  livecheck do
    url "https://download.tinkerwell.app/tinkerwell/latest-mac.yml"
    strategy :page_match
    regex(/version:\s*(\d+(?:\.\d+)*)/i)
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
