cask "textbuddy" do
  version "1.1.0,20"
  sha256 "bc76c0b845f055e75968a5995c6b92f0568d4db4dd6d143589b826e19a39cc66"

  url "https://download.clickontyler.com/textbuddy/textbuddy_#{version.after_comma}.zip",
      verified: "download.clickontyler.com/textbuddy"
  name "TextBuddy"
  desc "Convert, filter, sort, and transform text"
  homepage "https://textbuddy.app/"

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
