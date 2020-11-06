cask "wrike" do
  version "3.3.5"
  sha256 "6c6b720e64815f87a02914d253a77b3642fb61d212e6a4470d1c044b8803f6e3"

  url "https://dl.wrike.com/download/WrikeDesktopApp.v#{version}.dmg"
  appcast "https://www.wrike.com/frontend/electron-app/changelog.json"
  name "Wrike"
  homepage "https://www.wrike.com/apps/mobile-and-desktop/desktop-app/"

  app "Wrike for Mac.app"
end
