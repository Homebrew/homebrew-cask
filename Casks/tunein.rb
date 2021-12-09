cask "tunein" do
  version "1.24.0"
  sha256 "cc4c14cc34f5a3cca6d4b26c933b2f48221fc3c8d50757c7e3d18dbf1c45623c"

  url "https://cdn-desktop.tunein.com/release/TuneIn-#{version}.dmg"
  name "TuneIn"
  desc "Free Internet Radio"
  homepage "https://tunein.com/"

  livecheck do
    url "https://gemini-desktop-prod.s3.amazonaws.com/release/latest-mac.yml"
    strategy :electron_builder
  end

  app "TuneIn.app"

  zap trash: [
    "~/Library/Application Support/TuneIn",
    "~/Library/Caches/com.tunein.desktop",
    "~/Library/Caches/com.tunein.desktop.ShipIt",
    "~/Library/Logs/TuneIn",
    "~/Library/Preferences/com.tunein.desktop.plist",
  ]
end
