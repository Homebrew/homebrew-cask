cask "zen-browser" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.1-a.12"
  sha256 arm:   "e425784dd8747daf3a8f1e645e0b1ec7f348ded4ebd09eb9fde74f692b0d30ba",
         intel: "17c1b4422bb7ded4b40d227d6d2d4d0adfc18be07e8680feb3b07242081a15b0"

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
