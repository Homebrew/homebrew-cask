cask "vienna" do
  version "3.7.2,7555"
  sha256 "168b5df56b7f53fb877717c3a06d7451d0cdab767fe0ad7afa950da1d0bfa573"

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

  app "Vienna.app"

  zap trash: [
    "~/Library/Application Support/Vienna",
    "~/Library/Application Scripts/uk.co.opencommunity.vienna2",
    "~/Library/Caches/uk.co.opencommunity.vienna2",
    "~/Library/Cookies/uk.co.opencommunity.vienna2.binarycookies",
    "~/Library/HTTPStorages/uk.co.opencommunity.vienna2.binarycookies",
    "~/Library/Preferences/uk.co.opencommunity.vienna2.plist",
    "~/Library/Saved Application State/uk.co.opencommunity.vienna2.savedState",
    "~/Library/Scripts/Vienna",
  ]
end
