cask "wrike" do
  version "3.3.4"
  sha256 "9c6c4a261c72064ddcf8d6bdff079ba9b94029052eaf61a2c7d2e321a86a6389"

  url "https://dl.wrike.com/download/WrikeDesktopApp.v#{version}.dmg"
  appcast "https://www.wrike.com/frontend/electron-app/changelog.json"
  name "Wrike"
  homepage "https://www.wrike.com/apps/mobile-and-desktop/desktop-app/"

  app "Wrike for Mac.app"
end
