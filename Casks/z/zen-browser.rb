cask "zen-browser" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.1-a.9"
  sha256 arm:   "39611f4f22bd1350ea1a2b28c543b7a012c8b97739d307209cd46888998b071d",
         intel: "9f6eb0616e790b40e99065b9350a8b978f81e7699772718102a3dc10027d9918"

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
