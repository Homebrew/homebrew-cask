cask "textbuddy" do
  version "1.0.6,14"
  sha256 "b83f3d8b6c83e72008eef67ae5a9ec71225c0f504e0bad01806b1bb56bce87fd"

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
