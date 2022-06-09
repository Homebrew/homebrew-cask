cask "tinkerwell" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "3.2.0"

  if Hardware::CPU.intel?
    sha256 "8e414b281652501b24272dc1cb647d72c34b0509742486a6e08c2fe040c27bdd"
  else
    sha256 "360b5d196e92b8ff77727b85ba0ac12622c628ff19b552b73b38a745cca17bb8"
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
