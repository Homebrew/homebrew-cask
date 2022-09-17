cask "vienna" do
  version "3.8.3"
  sha256 "e7505b1387d00a4df1bcd66a7cc22c92885816681d0bc5006f2e7f081bfd0378"

  url "https://downloads.sourceforge.net/vienna-rss/v_#{version}/Vienna#{version}.tgz",
      verified: "downloads.sourceforge.net/vienna-rss/"
  name "Vienna"
  desc "RSS and Atom reader"
  homepage "https://www.vienna-rss.com/"

  livecheck do
    url "https://www.vienna-rss.com/sparkle-files/changelog.xml"
    regex(/Vienna[._-]?v?(\d+(?:\.\d+)+)\.t/i)
    strategy :sparkle do |items, regex|
      items.map { |item| item.url[regex, 1] }
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
