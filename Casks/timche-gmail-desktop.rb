cask "timche-gmail-desktop" do
  version "2.20.3"
  sha256 "ffdbf3c5687392990c09bc2516981372c83526741fcbbfe3811cb0bf133d2086"

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
