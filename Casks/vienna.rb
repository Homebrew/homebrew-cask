cask "vienna" do
  version "3.6.1"
  sha256 "372a37317c9b3ea011f991111284f3ada8f4ecced0004fab9778cdcf79e5ebdc"

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
