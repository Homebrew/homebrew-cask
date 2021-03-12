cask "timche-gmail-desktop" do
  version "2.24.0"
  sha256 "0b7f41c8b00c9f06706a186baaeeda086a31774e13db7564217a2bdce4136583"

  url "https://github.com/timche/gmail-desktop/releases/download/v#{version}/gmail-desktop-#{version}-mac.dmg"
  appcast "https://github.com/timche/gmail-desktop/releases.atom"
  name "Gmail Desktop"
  desc "Unofficial Gmail Desktop App"
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
