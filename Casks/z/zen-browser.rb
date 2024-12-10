cask "zen-browser" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.0.2-b.0"
  sha256 arm:   "5bcd5134db5344f13047211e18f63424ab1288b45fc4b44591a6944b2c53d47d",
         intel: "6fd55fbc7f5d212d3a9987b768071c61a374dc45089e975855a0a6086c9b28a6"

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
