cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "40796a7be7eeebba0bc559365036a0b08068cb3f93e274ae09118c93c1f6f9f3",
         intel: "28999a82e3649c4791cb6d35abc754a6c0bb8d699e02f33aaab8a38b60a6e347"

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
