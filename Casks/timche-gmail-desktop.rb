cask "timche-gmail-desktop" do
  version "2.20.2"
  sha256 "8760ad20b95e877a6ff82438e4bc670a1cdd2dc2d9329e09af7411f8e5354cfc"

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
