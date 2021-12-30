cask "textbuddy" do
  version "1.2.0,23"
  sha256 "7eeda9b0d8aeafe47b7e611b9b62fcf6026dd956565764ac48b7e791260a828c"

  url "https://get.retina.studio/textbuddy/textbuddy_#{version.csv.second}.dmg"
  name "TextBuddy"
  desc "Convert, filter, sort, and transform text"
  homepage "https://retina.studio/textbuddy/"

  livecheck do
    url "https://shine.clickontyler.com/appcast.php?id=58"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "TextBuddy.app"

  zap trash: [
    "~/Library/Application Support/com.clickontyler.TextBuddy",
    "~/Library/Caches/com.clickontyler.TextBuddy",
    "~/Library/Preferences/com.clickontyler.TextBuddy.plist",
  ]
end
