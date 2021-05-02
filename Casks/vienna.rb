cask "vienna" do
  version "3.7.1,7437"
  sha256 "3b6879e55ccc95ba965e6868084f5f3dd1d8d937f20f7c95730f1b8aedc2ba9a"

  url "https://github.com/ViennaRSS/vienna-rss/releases/download/v%2F#{version.before_comma}/Vienna#{version.before_comma}.tar.gz",
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
