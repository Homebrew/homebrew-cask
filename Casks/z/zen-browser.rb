cask "zen-browser" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.7.2b"
  sha256 arm:   "1e1c004d22e9eae0806bf4c62e932b1ab8e24dba011b563408eb573ef5439605",
         intel: "a8dc7f04a87f24f51fc80fbb946629c3d66a10740275690747fed97ed7ba5ae0"

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
