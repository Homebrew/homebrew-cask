cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "981ba8c8b0a3fbb1bde19af5ca6cb6d7d68526ec5a8663be724214a7b0307a69",
         intel: "d6b42ab46861c2312a8ae8c58c9d67519fa1652ee6e460bc2c6ca0e38c09dce2"

  url "https://github.com/UniClipboard/UniClipboard/releases/download/v#{version}/UniClipboard_#{version}_#{arch}.dmg"
  name "UniClipboard"
  desc "Cross-device clipboard syncing tool"
  homepage "https://www.uniclipboard.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "UniClipboard.app"

  zap trash: [
    "~/Library/Application Support/app.uniclipboard.desktop",
    "~/Library/Application Support/app.uniclipboard.desktop-upgrade-backups",
    "~/Library/Caches/app.uniclipboard.desktop",
    "~/Library/Logs/app.uniclipboard.desktop",
    "~/Library/Preferences/app.uniclipboard.desktop.plist",
    "~/Library/WebKit/app.uniclipboard.desktop",
  ]
end
