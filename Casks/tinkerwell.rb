cask "tinkerwell" do
  version "2.17.0"

  if Hardware::CPU.intel?
    sha256 "ab0d0f7064aed3a2f0f1455432612a858a48415822d5772c48a2b1d0ff55215b"

    url "https://download.tinkerwell.app/tinkerwell/Tinkerwell-#{version}.dmg"
  else
    sha256 "291138464954a3ff1159d66fc568545327ebf3a71b294eded2811ba2b51d2fb9"

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
