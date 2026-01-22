cask "tunein" do
  version "1.30.0"
  sha256 "86a28c77f82f26672aa444b8886cf6d182112f517e46636c414f9c466650a25c"

  url "https://cdn-desktop.tunein.com/release/TuneIn-#{version}-universal.dmg"
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
