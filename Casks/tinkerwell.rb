cask "tinkerwell" do
  version "2.15.0"

  if Hardware::CPU.intel?
    sha256 "1e003d4e68af69136f6786a43f6be5dd6ad871c296e68e3ec70af29785cfdcd0"

    url "https://download.tinkerwell.app/tinkerwell/Tinkerwell-#{version}.dmg"
  else
    sha256 "b0d213f45120fb9358a23269e238f93580b7662ab4a19ffcd61462e490909f76"

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
