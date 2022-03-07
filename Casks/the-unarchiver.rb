cask "the-unarchiver" do
  version "4.3.4,137,1646240113"
  sha256 "1ef28dcccdc4285551febbf3f67b6b7cc6a65718d6821d0ad5037ca5e44f53af"

  url "https://dl.devmate.com/com.macpaw.site.theunarchiver/#{version.csv.second}/#{version.csv.third}/TheUnarchiver-#{version.csv.second}.zip",
      verified: "devmate.com/com.macpaw.site.theunarchiver/"
  name "The Unarchiver"
  desc "Unpacks archive files"
  homepage "https://theunarchiver.com/"

  livecheck do
    url "https://updates.devmate.com/com.macpaw.site.theunarchiver.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version},#{item.url[%r{/(\d+)/TheUnarchiver-\d+\.zip}i, 1]}"
    end
  end

  auto_updates true

  app "The Unarchiver.app"

  zap trash: [
    "~/Library/Caches/cx.c3.theunarchiver",
    "~/Library/Cookies/cx.c3.theunarchiver.binarycookies",
    "~/Library/Preferences/cx.c3.theunarchiver.plist",
    "~/Library/Saved Application State/cx.c3.theunarchiver.savedState",
  ]
end
