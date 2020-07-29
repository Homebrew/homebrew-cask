cask 'wrike' do
  version '3.3.0'
  sha256 '49f2bcf9641c88e6e63405431967fdf10aad8423fba46ecf560ced17b70325ff'

  url "https://dl.wrike.com/download/WrikeDesktopApp.v#{version}.dmg"
  appcast 'https://www.wrike.com/frontend/electron-app/changelog.json'
  name 'Wrike'
  homepage 'https://www.wrike.com/apps/mobile-and-desktop/desktop-app/'

  app 'Wrike for Mac.app'
end
