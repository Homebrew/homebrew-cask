cask "zen-browser" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.6b"
  sha256 arm:   "92d26a445c06ce667347b843cd863cded2d95fdde4e772109fcbebbab29c86b7",
         intel: "c4e0a3ee2ebb64c729ae652858b26a3fd26ed0580f60916034fa2691b73d25b0"

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
