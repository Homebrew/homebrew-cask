cask "zen-browser" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.1-a.17"
  sha256 arm:   "6c3d3563b81ffbe7a071bf6f76af88a1db361d3adaca14558df80b9215d5012d",
         intel: "8ee7457bb98d3d83d2ec3f56426d230061474121e0cb74fe4e5979311a034861"

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
