cask "tunein" do
  version "1.26.0"
  sha256 "fa37d08fd33b3beb301aa578df6a923e9cda089895aea48d35dc16d68846fd17"

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
