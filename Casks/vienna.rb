cask "vienna" do
  version "3.7.3"
  sha256 "73ccf2bcea6884099708b323966a2307df8f0208264fda58ba4426bd87530d9d"

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
