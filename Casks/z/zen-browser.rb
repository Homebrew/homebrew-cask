cask "zen-browser" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.1-a.22"
  sha256 arm:   "32e9fbcc1fa85a3f4ec18dad4877f22aaef06f96468639aa67107c38f715f838",
         intel: "b24b3f16b5c57a57cf37107dec5308f9b05d876bdf74b8e185e39ace8122a423"

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
