cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "1.6.1"
  sha256 arm:   "8c8f9843f0a9da10dc03b8cf7066bc9256c244abf151f5493096193f3586d5e8",
         intel: "43eef976a2df6c03af7d29710590fb46289580ac3e4b8162b922900b207b1c3f"

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
