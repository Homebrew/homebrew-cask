cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "1.4.0"
  sha256 arm:   "3741a0f4ad1cbae9a793a0beefff1926aafc37bef93f027c2749dbcd3a5efa96",
         intel: "163605e3f98db33724c3c8b1039f6ac58090a89401aaf3d03a6a3bebebd647b1"

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
