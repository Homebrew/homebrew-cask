cask 'wrike' do
  version '3.2.1'
  sha256 'c129249152f5e8db882bf3ac24efd6e37e60ce227321dae462c6b9044ae5ccdb'

  url "https://dl.wrike.com/download/WrikeDesktopApp.v#{version}.dmg"
  appcast 'https://www.wrike.com/frontend/electron-app/changelog.json'
  name 'Wrike'
  homepage 'https://www.wrike.com/apps/mobile-and-desktop/desktop-app/'

  app 'Wrike for Mac.app'
end
