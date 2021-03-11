cask "timche-gmail-desktop" do
  version "2.21.1"
  sha256 "5763435a78c3c49e863da5aabc9fab5f7e32a350e3d7a96d2654524f078732ea"

  url "https://github.com/timche/gmail-desktop/releases/download/v#{version}/gmail-desktop-#{version}-mac.dmg"
  appcast "https://github.com/timche/gmail-desktop/releases.atom"
  name "Gmail Desktop"
  desc "Gmail client"
  homepage "https://github.com/timche/gmail-desktop"

  app "Gmail Desktop.app"

  zap trash: [
    "~/Library/Logs/Gmail Desktop",
    "~/Library/Preferences/io.cheung.gmail-desktop.plist",
    "~/Library/Application Support/Gmail Desktop",
    "~/Library/Saved Application State/io.cheung.gmail-desktop.savedState",
  ]
end
