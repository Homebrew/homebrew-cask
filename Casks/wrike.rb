cask "wrike" do
  version "3.3.6"
  sha256 "ad9aed232603dc184cceba30b192f771fd81582ca52d8ce9af6d5d8bde4b9c7b"

  url "https://dl.wrike.com/download/WrikeDesktopApp.v#{version}.dmg"
  appcast "https://www.wrike.com/frontend/electron-app/changelog.json"
  name "Wrike"
  homepage "https://www.wrike.com/apps/mobile-and-desktop/desktop-app/"

  app "Wrike for Mac.app"
end
