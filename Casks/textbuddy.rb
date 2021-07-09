cask "textbuddy" do
  version "1.0.11,19"
  sha256 "ce6cb3f1c2c1f8635fdd4dad1f2c9b9704f3d11f1c1fcd9cb24daa63323ef330"

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
