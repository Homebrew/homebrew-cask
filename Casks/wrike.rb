cask "wrike" do
  version "3.3.16"
  sha256 "7f925650a7d1d092022b23d78448f4e9c9e357467063cad27d957a2aa2c031a1"

  url "https://dl.wrike.com/download/WrikeDesktopApp.v#{version}.dmg"
  name "Wrike"
  desc "Project management app"
  homepage "https://www.wrike.com/apps/mobile-and-desktop/desktop-app/"

  livecheck do
    url "https://www.wrike.com/frontend/electron-app/changelog.json"
    regex(/"version"\s*:\s*"v?(\d+(?:\.\d+)+)(?:"|\s*\(for\s+Mac)/i)
  end

  app "Wrike for Mac.app"
end
