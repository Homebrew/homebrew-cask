cask "zen-browser" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.1-a.3"
  sha256 arm:   "851949b0afd2c3f36765f833375f41f26f6d3998bab9514f9a0ac6578b888628",
         intel: "e6b9cc131548f55a9372b06aa166abd1bfeea4658aaaafb212e7d9eecb10d515"

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
