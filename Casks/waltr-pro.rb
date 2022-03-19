cask "waltr-pro" do
  version "4.0.114"
  sha256 "e7ee3377d38c323aa989244f3e4fa1e993438e1e6cf3c921ce6fee8f240f19df"

  url "https://ushining.softorino.com/shine_uploads/waltrpromac_#{version}.dmg"
  name "WALTR PRO"
  desc "Media conversion and direct transfer tool for Apple devices"
  homepage "https://softorino.com/waltr/"

  livecheck do
    url "https://ushining.softorino.com/appcast.php?abbr=wpm"
    strategy :sparkle
  end

  auto_updates true

  app "WALTR PRO.app"

  zap trash: [
    "~/Library/Application Support/WALTR PRO",
    "~/Library/Caches/com.softorino.waltrpro",
    "~/Library/Logs/WALTR PRO",
    "~/Library/Preferences/com.softorino.waltrpro.plist",
    "~/Library/Saved Application State/com.softorino.waltrpro.savedState",
    "/Users/Shared/WALTR PRO",
  ]
end
