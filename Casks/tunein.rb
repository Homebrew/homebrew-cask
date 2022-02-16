cask "tunein" do
  version "1.25.0"
  sha256 "3c888a1aea2f2ff948021fd1dba827fe5d886f6c3cc513c46f4f1d13f462fa77"

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
