cask "waltr-pro" do
  version "4.0.122"
  sha256 "9f54a213be17eb65d5d3a27907a06dd1c3fc9389eb5375dedd0029ee6a4ff6a5"

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
