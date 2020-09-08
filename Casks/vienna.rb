cask "vienna" do
  version "3.5.7"
  sha256 "59e3d7b8983cbf27e467d81fb5aa3be3664736c2020e4b651890ea490e279c55"

  # bintray.com/viennarss/ was verified as official when first introduced to the cask
  url "https://dl.bintray.com/viennarss/vienna-rss/Vienna#{version}.tar.gz"
  appcast "https://viennarss.github.io/sparkle-files/changelog.xml"
  name "Vienna"
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
