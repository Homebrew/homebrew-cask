cask "tinkerwell" do
  version "2.14.1"

  if Hardware::CPU.intel?
    sha256 "cd884246241ef29fa20bd199252720b10980fd840d7a629390830584a120777b"

    url "https://download.tinkerwell.app/tinkerwell/Tinkerwell-#{version}.dmg"
  else
    sha256 "06e58255f7f7b1bade3c71cf4ca699233c7dd6d3852265e487c0c2c978d67de4"

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
