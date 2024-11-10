cask "zen-browser" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.1-a.18"
  sha256 arm:   "d6e98f861dfcfc5d520d2bf5880c9ab66c4c1af90ecf3476ca21b115a7764322",
         intel: "60f28eef843b2f99eb611dc57ddffc48f19304edc65b7f95a2be1cd20230194b"

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
