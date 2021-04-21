cask "tunein" do
  version "1.19.0"
  sha256 "591b77049d1e95e61335268fbaded1c6ace515d46b38ea8fb673ca873e3d16a5"

  url "https://s3-us-west-2.amazonaws.com/gemini-desktop-prod/release/TuneIn-#{version}.dmg",
      verified: "s3-us-west-2.amazonaws.com/gemini-desktop-prod/"
  name "TuneIn"
  desc "Free Internet Radio"
  homepage "https://tunein.com/"

  app "TuneIn.app"

  zap trash: [
    "~/Library/Application Support/TuneIn",
    "~/Library/Caches/com.tunein.desktop",
    "~/Library/Caches/com.tunein.desktop.ShipIt",
    "~/Library/Logs/TuneIn",
    "~/Library/Preferences/com.tunein.desktop.plist",
  ]
end
