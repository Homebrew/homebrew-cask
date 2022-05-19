cask "tinkerwell" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "2.30.0"

  if Hardware::CPU.intel?
    sha256 "8ada85668bacb091af646daa14f9d789fbf5ae4cfb5bd58fb759a9224ce6823e"
  else
    sha256 "b5f0a02ffdaaaf5bba3684070c7befa630177c98f7390a08f9087940f80ae179"
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
