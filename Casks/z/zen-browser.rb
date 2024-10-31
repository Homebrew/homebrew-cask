cask "zen-browser" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.1-a.16"
  sha256 arm:   "bddab9dde212380bc0b63dde60e5dff14fa01fb8e81289ba609f1efd4d232083",
         intel: "c436e2a93e471f4bb8eb472a939b03fce77c7ecc8137445ea68d7f863c8780b0"

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
