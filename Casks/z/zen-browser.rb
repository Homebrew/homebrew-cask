cask "zen-browser" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.1-a.8"
  sha256 arm:   "ce63a224e81bcc47b1343ac28ad5a5efff36c3effdaaca47ed62f3991cc6ccef",
         intel: "c8157075061f0b5a52ddb878b61fe3278835035bf6f6fee7cc31c07ec0d0d68e"

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
