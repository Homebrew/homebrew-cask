cask 'wrike' do
  version '3.2.0'
  sha256 '1768adcfe542876d5daf0548443f1e0221c07e35fcc252039bf122799b8fc4aa'

  url "https://dl.wrike.com/download/WrikeDesktopApp.v#{version}.dmg"
  appcast 'https://www.wrike.com/frontend/electron-app/changelog.json'
  name 'Wrike'
  homepage 'https://www.wrike.com/apps/mobile-and-desktop/desktop-app/'

  app 'Wrike for Mac.app'
end
