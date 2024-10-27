cask "zen-browser" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.1-a.13"
  sha256 arm:   "e9cfe12fbb3fc30f3b4f3ebdea3a850d8358ad7fc435112df2793108ae46ea95",
         intel: "3270a5d8b96b3c24f8a303f9043f3252e83c8261ce6b534bfe40b031a86a8c5d"

  url "https://github.com/zen-browser/desktop/releases/download/#{version}/zen.macos-#{arch}.dmg",
      verified: "github.com/zen-browser/desktop/"
  name "Zen Browser"
  desc "Gecko based web browser"
  homepage "https://zen-browser.app/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Zen Browser.app"

  zap trash: [
        "~/Library/Application Support/zen",
        "~/Library/Caches/Mozilla/updates/Applications/Zen Browser",
        "~/Library/Caches/zen",
        "~/Library/Preferences/org.mozilla.com.zen.browser.plist",
        "~/Library/Saved Application State/org.mozilla.com.zen.browser.savedState",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end
