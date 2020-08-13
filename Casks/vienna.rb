cask "vienna" do
  version "3.5.6"
  sha256 "81f6b6f9721d435dc73898e3629c8b477bd1a904614d5048c53e02e9ddd8f7fb"

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
