cask "tinkerwell" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "2.18.0"

  if Hardware::CPU.intel?
    sha256 "8c162dc50eb19928c2313c449d0112b67495fd3a1ac89a538d5bb29c77bf33b2"
  else
    sha256 "ef8f2336cad0206a3a196f00faa4f975f2f241b44a20763cf54d35b9514ad3a5"
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
