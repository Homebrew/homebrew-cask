cask "zen-browser" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.1-a"
  sha256 arm:   "4f2d047f2bf40ec519d0c1f3a72f6a239a99c4eabca4274bc01428c7cedc7ff9",
         intel: "700f7cd0a2ca33a5288faa3213737b3110c87a60c09b8806206605d8ced9b426"

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
