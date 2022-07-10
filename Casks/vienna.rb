cask "vienna" do
  version "3.8.0,7816"
  sha256 "5155b4f9b7846ac50bcc2317e93b46f002963af7d3f9bc588cd48b26381bcb70"

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
