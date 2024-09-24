cask "zen-browser" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.1-a.4"
  sha256 arm:   "6374ba67ab238e1396e9c5ca76c6dad20879d857894de1ee10341ad207548925",
         intel: "33129c1683ee90ebf10ea52f5bdc28891b1445ca684a38d9dae66828fc92cb0b"

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
