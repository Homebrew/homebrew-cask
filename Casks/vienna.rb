cask "vienna" do
  version "3.8.1,7830"
  sha256 "aeb7a976c1446bbc98ab3b63c5b00c44fcb20f028e8e5d2caf760c6fe6b52380"

  url "https://github.com/ViennaRSS/vienna-rss/releases/download/v%2F#{version.csv.first}/Vienna#{version.csv.first}.tar.gz",
      verified: "github.com/ViennaRSS/vienna-rss/"
  name "Vienna"
  desc "RSS and Atom reader"
  homepage "https://www.vienna-rss.com/"

  livecheck do
    url "https://www.vienna-rss.com/sparkle-files/changelog.xml"
    strategy :sparkle do |item|
      "#{item.short_version.sub(/ :[^:]+:/, "")},#{item.version}"
    end
  end

  auto_updates true

  app "Vienna.app"

  zap trash: [
    "~/Library/Application Scripts/uk.co.opencommunity.vienna2",
    "~/Library/Application Support/Vienna",
    "~/Library/Caches/uk.co.opencommunity.vienna2",
    "~/Library/Cookies/uk.co.opencommunity.vienna2.binarycookies",
    "~/Library/HTTPStorages/uk.co.opencommunity.vienna2.binarycookies",
    "~/Library/Preferences/uk.co.opencommunity.vienna2.plist",
    "~/Library/Saved Application State/uk.co.opencommunity.vienna2.savedState",
    "~/Library/Scripts/Vienna",
  ]
end
