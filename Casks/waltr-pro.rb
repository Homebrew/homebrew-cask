cask "waltr-pro" do
  version "4.0.113"
  sha256 "56754558af5149bc574418b438c364aeef622c555b5169e457f79aa68c0eb04e"

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
