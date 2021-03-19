cask "timche-gmail-desktop" do
  version "2.25.2"
  sha256 "6d185e1caae9fc5b5b4335344dd96c8411db347570a56dd59a8193f58f275048"

  url "https://github.com/timche/gmail-desktop/releases/download/v#{version}/gmail-desktop-#{version}-mac.dmg"
  appcast "https://github.com/timche/gmail-desktop/releases.atom"
  name "Gmail Desktop"
  desc "Unofficial Gmail desktop app"
  homepage "https://github.com/timche/gmail-desktop"

  app "Gmail Desktop.app"

  zap trash: [
    "~/Library/Application Support/Gmail Desktop",
    "~/Library/Caches/io.cheung.gmail-desktop.ShipIt",
    "~/Library/Caches/io.cheung.gmail-desktop",
    "~/Library/Logs/Gmail Desktop",
    "~/Library/Preferences/io.cheung.gmail-desktop.plist",
    "~/Library/Saved Application State/io.cheung.gmail-desktop.savedState",
    "~/Library/WebKit/io.cheung.gmail-desktop",
  ]
end
