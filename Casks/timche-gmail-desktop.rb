cask "timche-gmail-desktop" do
  version "2.25.1"
  sha256 "1d9e5df43c74405fad330215325fd22723be7f2fceacfabd68a91f9f80d7d00c"

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
