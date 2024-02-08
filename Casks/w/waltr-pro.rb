cask "waltr-pro" do
  version "4.0.115"
  sha256 "2a00e1e446af764a0080fb94fddbeac48775a8be412c3d4b33b4efbf27fcc3c7"

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
    "/Users/Shared/WALTR PRO",
    "~/Library/Application Support/WALTR PRO",
    "~/Library/Caches/com.softorino.waltrpro",
    "~/Library/Logs/WALTR PRO",
    "~/Library/Preferences/com.softorino.waltrpro.plist",
    "~/Library/Saved Application State/com.softorino.waltrpro.savedState",
  ]
end
