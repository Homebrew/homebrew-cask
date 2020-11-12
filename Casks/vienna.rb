cask "vienna" do
  version "3.6.0"
  sha256 "1ad5fb5f41e4fe4e5f54e7fd121d8b89f114454d6e72056f17832d9e9b82da1b"

  # bintray.com/viennarss/ was verified as official when first introduced to the cask
  url "https://dl.bintray.com/viennarss/vienna-rss/Vienna#{version}.tar.gz"
  appcast "https://viennarss.github.io/sparkle-files/changelog.xml"
  name "Vienna"
  desc "RSS and Atom reader"
  homepage "https://www.vienna-rss.com/"

  app "Vienna.app"

  zap trash: [
    "~/Library/Application Support/Vienna",
    "~/Library/Caches/uk.co.opencommunity.vienna2",
    "~/Library/Cookies/uk.co.opencommunity.vienna2.binarycookies",
    "~/Library/Preferences/uk.co.opencommunity.vienna2.plist",
    "~/Library/Saved Application State/uk.co.opencommunity.vienna2.savedState",
  ]
end
