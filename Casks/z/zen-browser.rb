cask "zen-browser" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.7b"
  sha256 arm:   "c58720ed7eaf9b30df3ef233ca3e788e5fa92cf47433232f109cd90ca7478d43",
         intel: "f9cac7103ca926cdbed1e34067b31b41dc2721b880380d09b003f0fee77fddb7"

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
