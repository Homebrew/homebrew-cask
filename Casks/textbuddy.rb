cask "textbuddy" do
  version "1"
  sha256 :no_check

  url "https://textbuddy.app/download-v1/"
  name "TextBuddy"
  desc "Convert, filter, sort, and transform text"
  homepage "https://textbuddy.app/"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "TextBuddy.app"

  zap trash: [
    "~/Library/Application Support/com.clickontyler.TextBuddy",
    "~/Library/Caches/com.clickontyler.TextBuddy",
    "~/Library/Preferences/com.clickontyler.TextBuddy.plist",
  ]
end
