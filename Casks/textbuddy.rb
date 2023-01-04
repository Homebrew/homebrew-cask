cask "textbuddy" do
  version "1.4.1,26"
  sha256 "117d7e4bac43ff681d44b1ea11e56a4a9ce3ae68c2668641f900ccd977413e9b"

  url "https://get.retina.studio/textbuddy/textbuddy_#{version.csv.second}.zip"
  name "TextBuddy"
  desc "Convert, filter, sort, and transform text"
  homepage "https://retina.studio/textbuddy/"

  livecheck do
    url "https://dash.retina.studio/appcast.php?id=58"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "TextBuddy.app"

  zap trash: [
        "~/Library/Application Support/com.clickontyler.TextBuddy",
        "~/Library/Caches/CloudKit/com.clickontyler.TextBuddy",
        "~/Library/Caches/com.clickontyler.TextBuddy",
        "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.clickontyler.TextBuddy",
        "~/Library/HTTPStorages/com.clickontyler.TextBuddy",
        "~/Library/HTTPStorages/com.clickontyler.TextBuddy.binarycookies",
        "~/Library/Preferences/com.clickontyler.TextBuddy.plist",
      ],
      rmdir: "~/Library/Caches/com.plausiblelabs.crashreporter.data"
end
