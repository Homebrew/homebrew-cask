cask "wrike" do
  version "4.1.1"
  sha256 "ee41dff2dcadfb8bc670ee05fa22acef189b7bf38a5dc8abd5e80c3f1b0bd532"

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
end
