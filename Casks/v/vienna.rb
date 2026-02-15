cask "vienna" do
  version "3.10.0"
  sha256 "801e25f6057c55c9bc769358855813c9e1518a7ed91d3c98fa799812246bdd8b"

  url "https://downloads.sourceforge.net/vienna-rss/v_#{version}/Vienna#{version}.dmg",
      verified: "downloads.sourceforge.net/vienna-rss/"
  name "Vienna"
  desc "RSS and Atom reader"
  homepage "https://www.vienna-rss.com/"

  livecheck do
    url "https://www.vienna-rss.com/sparkle-files/changelog.xml"
    regex(/Vienna[._-]?v?(\d+(?:\.\d+)+)/i)
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
