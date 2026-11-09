cask "waltr-pro" do
  version "4.1.3"
  sha256 "235a068ad90d4ba0f1a0a2263fe0677ebb0dae6c317811cee031117dcd009f45"

  url "https://ushining.softorino.com/shine_uploads/waltrpromacosintel_#{version}.dmg"
  name "WALTR PRO"
  desc "Media conversion and direct transfer tool for Apple devices"
  homepage "https://softorino.com/waltr/"

  livecheck do
    url "https://ushining.softorino.com/appcast.php?abbr=wpm"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "WALTR PRO.app"

  zap trash: [
    "/Users/Shared/WALTR PRO",
    "~/Library/Application Support/WALTR PRO",
    "~/Library/Caches/com.softorino.waltrpro",
    "~/Library/Logs/WALTR PRO",
    "~/Library/Preferences/com.softorino.waltrpro.plist",
    "~/Library/Saved Application State/com.softorino.waltrpro.savedState",
  ]
end
