cask "wrike" do
  version "3.3.15"
  sha256 "fa5b15bb7fcc28c7ca45eac0660c89852f5b7728ee389660b71972402a2da639"

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
