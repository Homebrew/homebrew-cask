cask "wrike" do
  version "4.4.0"
  sha256 "375cc905be8ab564172d760bae9fa118700013b5147381dffe434f50435c7c0a"

  url "https://dl.wrike.com/download/WrikeDesktopApp.v#{version}.dmg"
  name "Wrike"
  desc "Project management app"
  homepage "https://www.wrike.com/apps/mobile-and-desktop/desktop-app/"

  livecheck do
    url "https://www.wrike.com/frontend/electron-app/changelog.json"
    regex(/"version"\s*:\s*"v?(\d+(?:\.\d+)+)(?:"|\s*\(for\s+Mac)/i)
  end

  app "Wrike for Mac.app"

  zap trash: [
    "~/Library/Application Support/Wrike",
    "~/Library/Logs/Wrike",
    "~/Library/Preferences/com.wrike.Wrike.plist",
    "~/Library/Saved Application State/com.wrike.Wrike.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
