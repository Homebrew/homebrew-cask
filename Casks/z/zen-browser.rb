cask "zen-browser" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.1-a.2"
  sha256 arm:   "e8e9f9c305ab2806cb6fa66e15b76f9d63e271deb029115763fc9b18d7cc4d54",
         intel: "2974c1c2d447450498c6f5a38d7ded3fb323306343302ff264f3aff05d3c7852"

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
