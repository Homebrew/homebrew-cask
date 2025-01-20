cask "zen-browser" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.7.1b"
  sha256 arm:   "fe2ba05261bcab2c0934773e6d1385dbe68a5ac1da790d064b63292a22e0098c",
         intel: "f6be6536e9ea8e95b532baeb196bf584ac81051932cd9056abd9ae50fc4f59e7"

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
