cask "textbuddy" do
  version "1.0.7,15"
  sha256 "d279f7068da863384d2a962355acfda8fe6e3211e524c828884a41c7ce31c047"

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
