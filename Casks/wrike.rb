cask "wrike" do
  version "3.3.7"
  sha256 "0f4dd666676bf1049b5dc3ce45dbf7e1fe2767eadddc251585f944f8be080c2e"

  url "https://dl.wrike.com/download/WrikeDesktopApp.v#{version}.dmg"
  name "Wrike"
  homepage "https://www.wrike.com/apps/mobile-and-desktop/desktop-app/"

  livecheck do
    url "https://www.wrike.com/frontend/electron-app/changelog.json"
    strategy :page_match
    regex(%r{href=.*?/WrikeDesktopApp.v(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Wrike for Mac.app"
end
