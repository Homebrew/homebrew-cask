cask 'wrike' do
  version '3.3.2'
  sha256 '56e2bc1c0f551646a6b574b41494d0f0f57ceea078f96560c01e2dc087360b42'

  url "https://dl.wrike.com/download/WrikeDesktopApp.v#{version}.dmg"
  appcast 'https://www.wrike.com/frontend/electron-app/changelog.json'
  name 'Wrike'
  homepage 'https://www.wrike.com/apps/mobile-and-desktop/desktop-app/'

  app 'Wrike for Mac.app'
end
