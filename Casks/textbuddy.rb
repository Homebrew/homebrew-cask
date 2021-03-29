cask "textbuddy" do
  version "1.0.8,16"
  sha256 "d52f15d48e337ce54fbde070d453a8d46ef5abef61aed69337d8dfc5ae6720df"

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
