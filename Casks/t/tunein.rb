cask "tunein" do
  version "1.34.0"
  sha256 "5c22bf5994dabec476b00289acb5a5be21db541504018f27c0de5cdcb9157b9a"

  url "https://cdn-desktop.tunein.com/release/TuneIn-#{version}-universal.dmg"
  name "TuneIn"
  desc "Free Internet Radio"
  homepage "https://tunein.com/"

  livecheck do
    url "https://gemini-desktop-prod.s3.amazonaws.com/release/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :monterey

  app "TuneIn.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tunein.desktop.sfl*",
    "~/Library/Application Support/TuneIn",
    "~/Library/Caches/com.tunein.desktop",
    "~/Library/Caches/com.tunein.desktop.ShipIt",
    "~/Library/Logs/TuneIn",
    "~/Library/Preferences/com.tunein.desktop.plist",
  ]
end
