cask "waltr-pro" do
  version "4.0.118"
  sha256 "141d2b0d5e645a6a2511217c6445548093063f645d8fad18c1dfd65854d1ef8c"

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

  caveats do
    requires_rosetta
  end
end
