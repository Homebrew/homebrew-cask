cask "timche-gmail-desktop" do
  
  version "2.24.0"
  sha256 "0b7f41c8b00c9f06706a186baaeeda086a31774e13db7564217a2bdce4136583"

  url "https://github.com/timche/gmail-desktop/releases/download/#{version}/gmail-desktop-#{version}-mac.dmg"
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
