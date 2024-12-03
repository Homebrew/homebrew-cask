cask "zen-browser@twilight" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.0.1-t.22"
  sha256 :no_check

  url "https://github.com/zen-browser/desktop/releases/download/twilight/zen.macos-#{arch}.dmg",
      verified: "github.com/zen-browser/desktop/"
  name "Zen Twilight"
  desc "Gecko based web browser"
  homepage "https://zen-browser.app/"

  livecheck do
    url "https://github.com/zen-browser/desktop/releases/tag/twilight"
    regex(%r{/tag/twilight[^>]+?>.+?v?(\d+(?:\.\d+)+(?:[._-][a-z]\.\d+)?)}i)
    strategy :page_match
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Zen Twilight.app"

  zap trash: [
        "~/Library/Application Support/Zen",
        "~/Library/Caches/Mozilla/updates/Applications/Zen Twilight",
        "~/Library/Caches/zen",
        "~/Library/Preferences/org.mozilla.com.zen.browser.plist",
        "~/Library/Saved Application State/org.mozilla.com.zen.browser.savedState",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end
