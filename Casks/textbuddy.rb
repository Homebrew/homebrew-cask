cask "textbuddy" do
  version "1.0.2"
  sha256 "db5d71aa4ae383687561f8a77667f60a855b954fb1a1983ff27dbac3d5c22140"

  url "https://download.clickontyler.com/textbuddy/textbuddy_#{version.major_minor.no_dots}.zip"
  name "TextBuddy"
  desc "Convert, filter, sort, and transform text"
  homepage "https://textbuddy.app/"

  livecheck do
    url "https://shine.clickontyler.com/appcast.php?id=58"
    strategy :page_match
    regex(/TextBuddy.(\d+(?:\.\d+)*)/i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "TextBuddy.app"

  zap trash: [
    "~/Library/Application Support/com.clickontyler.TextBuddy",
    "~/Library/Caches/com.clickontyler.TextBuddy",
    "~/Library/Preferences/com.clickontyler.TextBuddy.plist",
  ]
end
