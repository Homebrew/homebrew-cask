cask "zen-browser" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.1-a.6"
  sha256 arm:   "39bf91ea0d3f0cd274d8e9fd5d2ade895789f883082ad19b1eb779a97c5d3a23",
         intel: "c33f040eedc69443b715fc3924e2d620d052aef6256e5802dd4aa8efbfbe9c88"

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
