cask "wrike" do
  version "4.3.0"
  sha256 "52ee7523d9872840872ecb864f88e90fa59a65e896ee64011ee27578fb14f7f0"

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
