cask "zen-browser" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.1-a.5"
  sha256 arm:   "b6d7304ad591404f844819e4794137182189c036a5af24ddfbdbc0035e601793",
         intel: "d5b4bbad9780223b1fe71d74afb06704ea28142b607a7c80d5d2a26202393c2c"

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
