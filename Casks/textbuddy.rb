cask "textbuddy" do
  version "1.3.0,24"
  sha256 "26ee19e8a9c03644711136203bb5d0167ff760216406904ad3fb1b120859a76f"

  url "https://get.retina.studio/textbuddy/textbuddy_#{version.csv.second}.zip"
  name "TextBuddy"
  desc "Convert, filter, sort, and transform text"
  homepage "https://retina.studio/textbuddy/"

  livecheck do
    url "https://dash.retina.studio/appcast.php?id=58"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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
