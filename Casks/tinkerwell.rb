cask "tinkerwell" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "3.3.0"

  if Hardware::CPU.intel?
    sha256 "db47c0bd2cd1968fbb69a48fe671ec9ba66e64d9aaa106080ebb6208bdcaf57b"
  else
    sha256 "5ff82d38734f5269bbf799068e4bf6ff46f10f475c3a496f24fa872e1197eb50"
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
