cask "zen-browser" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.1-a.10"
  sha256 arm:   "797bc25b504d209790fd817d54b92170bb0c987006cad26641c8262870a431a8",
         intel: "3f60e9d164648ecbba119b675dad39d34801227800753b5346f15f6aa1ca1ab3"

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
