cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "1.5.0"
  sha256 arm:   "a4dcc5f03e0a8a0954062e18685e7af5c23eb1d292ce3289ad2b3ddfbd3bcd17",
         intel: "80790e719ce48f4809d36280779c8a3eb328ef2832c183181e70e7f70980159d"

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
    "~/Library/WebKit/app.uniclipboard.desktop.ui",
  ]
end
