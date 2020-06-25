cask 'wrike' do
  version '3.3.1'
  sha256 '38e9be66f19f435d67aa45e25f53d0e3b3801259dd457242eba139c8a3df03cf'

  url "https://dl.wrike.com/download/WrikeDesktopApp.v#{version}.dmg"
  appcast 'https://www.wrike.com/frontend/electron-app/changelog.json'
  name 'Wrike'
  homepage 'https://www.wrike.com/apps/mobile-and-desktop/desktop-app/'

  app 'Wrike for Mac.app'
end
