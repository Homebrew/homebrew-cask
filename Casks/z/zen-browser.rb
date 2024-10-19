cask "zen-browser" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.1-a.11"
  sha256 arm:   "147ba9d5853e081bc65ee5f1e61241660dd80d62fd66a2c1727c30f0d8d88f57",
         intel: "e4969b7dfe97ce09a10cba33bb51acd746715932d3c0faf199d00b0af10216f1"

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
